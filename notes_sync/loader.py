import toml
from pathlib import Path
from .exporter import export_note_by_title


class NoteLoader:
    def __init__(self, config_path):
        with open(config_path, "r", encoding="utf-8") as f:
            config = toml.load(f)
        self.export_dir = Path(config['EXPORT_NOTE_PATH'])

    def export_note(self, note_title: str) -> Path:
        self.export_dir.mkdir(parents=True, exist_ok=True)
        export_note_by_title(note_title, self.export_dir)
        return self.export_dir / f"{note_title}.md"

    def load_markdown_file(self, path: Path):
        with path.open("r", encoding="utf-8") as file:
            return file.readlines()

    def load_note_markdown(self, note_title: str):
        note_path = self.export_note(note_title)
        return self.load_markdown_file(note_path)
