from notes_sync.loader import NoteLoader


def test_export_note_constructor(tmp_path, mocker):
    export_dir = tmp_path / "exported"
    config_path = tmp_path / "config.toml"
    config_path.write_text(
        f'EXPORT_NOTE_PATH = "{export_dir}"\n', encoding="utf-8")

    def fake_export(note_title, export_dir_arg):
        assert note_title == "P13"
        assert export_dir_arg == export_dir
        export_dir_arg.mkdir(parents=True, exist_ok=True)
        (export_dir_arg / "P13.md").write_text("# P13\n", encoding="utf-8")
        return export_dir_arg / "P13.md"

    mocker.patch(
        "notes_sync.loader.export_note_by_title",
        side_effect=fake_export,
    )

    loader = NoteLoader(str(config_path))
    result_path = loader.export_note("P13")

    assert result_path == export_dir / "P13.md"
    assert result_path.exists()


def test_load_note_markdown_returns_file_lines(tmp_path, mocker):
    export_dir = tmp_path / "exported"
    export_dir.mkdir()
    note_file = export_dir / "test.md"
    note_file.write_text("# Gym\nLine two\n", encoding="utf-8")

    config_path = tmp_path / "config.toml"
    config_path.write_text(
        f'EXPORT_NOTE_PATH = "{export_dir}"\n', encoding="utf-8")

    mocker.patch(
        "notes_sync.loader.export_note_by_title",
        return_value=note_file,
    )

    loader = NoteLoader(str(config_path))
    lines = loader.load_note_markdown("test")

    assert lines == ["# Gym\n", "Line two\n"]
