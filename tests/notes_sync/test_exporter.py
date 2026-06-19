from pathlib import Path
import pytest

from notes_sync.exporter import clean_html_to_markdown, export_note_by_title


class DummyCompletedProcess:
    def __init__(self, stdout: str = ""):
        self.stdout = stdout


def test_clean_html_to_markdown_converts_html_to_markdown():
    html = (
        '<div><h2>Lower Strength</h2></div>'
        '<div><b>Bench press 10/8/5</b></div>'
        '<div>10: 45</div>'
        '<div>8: 45/10</div>'
        '<div>5: 45/25</div>'
        '</div>'
    )
    markdown = clean_html_to_markdown(html, "P13")

    assert markdown.startswith("# P13")
    assert "**Lower Strength**" in markdown
    assert "Bench press 10/8/5" in markdown
    assert "10: 45" in markdown
    assert "\n\n" in markdown


def test_export_note_by_title_writes_markdown_file(mocker, tmp_path):
    html_body = '<div><h2>Gym Lower</h2><div>Back Squat</div></div>'

    mocker.patch(
        "notes_sync.exporter.subprocess.run",
        return_value=DummyCompletedProcess(stdout=html_body),
    )

    note_path = export_note_by_title("P13", tmp_path)

    assert note_path.exists()
    markdown = note_path.read_text(encoding="utf-8")
    assert "**Gym Lower**" in markdown
    assert "Back Squat" in markdown
    assert note_path.name == "P13.md"


def test_export_note_by_title_raises_if_note_missing(mocker, tmp_path):
    mocker.patch(
        "notes_sync.exporter.subprocess.run",
        return_value=DummyCompletedProcess(stdout="ERROR: NOTE_NOT_FOUND"),
    )

    with pytest.raises(FileNotFoundError):
        export_note_by_title("MissingNote", tmp_path)
