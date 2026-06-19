from pathlib import Path
import re
import subprocess
from typing import Union


def get_single_note_via_applescript(note_title: str) -> str:
    """Return the Notes.app HTML body for `note_title` or raise on osascript error."""
    escaped_title = note_title.replace('"', '\\"')
    applescript_code = f'''
    tell application "Notes"
        try
            set targetNote to note "{escaped_title}"
            set noteBody to body of targetNote
            return noteBody
        on error
            return "ERROR: NOTE_NOT_FOUND"
        end try
    end tell
    '''
    try:
        result = subprocess.run(
            ["osascript", "-e", applescript_code],
            capture_output=True,
            text=True,
            check=True,
        )
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        raise RuntimeError(f"AppleScript error: {e.stderr.strip()}") from e


def clean_html_to_markdown(html_content: str, title: str) -> str:
    """Convert a single Apple Notes HTML body into simple Markdown."""
    text = html_content

    # convert headings
    text = re.sub(r"<h1>(.*?)</h1>", r"*\1*\n", text, flags=re.S)
    text = re.sub(r"<h2>(.*?)</h2>", r"**\1**\n", text, flags=re.S)
    text = re.sub(r"<h3>(.*?)</h3>", r"***\1***\n", text, flags=re.S)

    # strip wrapper items
    text = re.sub(r"<div>", "\n", text, flags=re.S)
    text = re.sub(r"</div>", "", text, flags=re.S)
    text = re.sub(r"<br\s*/?>", "\n", text, flags=re.S)

    # convert font styles
    text = re.sub(r"<b>(.*?)</b>", r"**\1**", text, flags=re.S)
    text = re.sub(r"<i>(.*?)</i>", r"*\1*", text, flags=re.S)

    # strip leftover tags <span> or <object>
    text = re.sub(r"<[^>]+>", "", text, flags=re.S)

    # clean double line breaks
    cleaned_body = re.sub(r"\n{3,}", "\n\n", text).strip()

    # inject file name if title not present
    if not cleaned_body.startswith("# "):
        return f"# {title}\n\n{cleaned_body}"

    return cleaned_body


def export_note_by_title(note_title: str, export_dir: Union[str, Path]) -> Path:
    """
    Export `note_title` to a markdown file under `export_dir`.
    Returns the Path to the written file. Raises FileNotFoundError if the note
    is not found and RuntimeError for AppleScript failures.
    """
    export_dir = Path(export_dir)
    raw_body = get_single_note_via_applescript(note_title)

    if not raw_body or raw_body == "ERROR: NOTE_NOT_FOUND":
        raise FileNotFoundError(f"Could not find note: {note_title}")

    safe_title = re.sub(r'[\\/*?:"<>|]', "",
                        note_title)[:50].strip() or "Exported Note"
    markdown = clean_html_to_markdown(raw_body, note_title)

    export_dir.mkdir(parents=True, exist_ok=True)
    file_path = export_dir / f"{safe_title}.md"
    file_path.write_text(markdown, encoding="utf-8")
    return file_path
