from notes_sync.auth import SupabaseSession


class DummyAuth:
    def __init__(self):
        self.signed_in = False

    def sign_in_with_password(self, credentials):
        assert credentials["email"] == "test@example.com"
        assert credentials["password"] == "secret"
        self.signed_in = True

    def get_user(self):
        class UserObj:
            class Data:
                id = "user-123"

            user = Data()

        return UserObj()


class DummyConnection:
    def __init__(self):
        self.auth = DummyAuth()


def test_load_credentials_reads_config(tmp_path):
    config_path = tmp_path / "config.toml"
    config_path.write_text(
        'IMPORT_USERNAME = "test@example.com"\nIMPORT_PASSWORD = "secret"\n',
        encoding="utf-8",
    )

    session = SupabaseSession(str(config_path))
    username, password = session.load_credentials()

    assert username == "test@example.com"
    assert password == "secret"


def test_connect_sets_conn_and_user_id(mocker, tmp_path):
    config_path = tmp_path / "config.toml"
    config_path.write_text(
        'IMPORT_USERNAME = "test@example.com"\nIMPORT_PASSWORD = "secret"\n',
        encoding="utf-8",
    )

    mocker.patch(
        "notes_sync.auth.st.connection",
        return_value=DummyConnection(),
    )

    session = SupabaseSession(str(config_path))
    returned = session.connect()

    assert returned is session
    assert session.conn is not None
    assert session.user_id == "user-123"
