install:
	pip install --upgrade pip
	pip install -r requirements.txt
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
lint:
	pylint main.py

format:
	black .

test:
	pytest -vv test_main.py

all: install lint test
