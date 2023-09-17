from main import say_hello


def test_say_hello():
    result = say_hello()
    assert "hello" == result