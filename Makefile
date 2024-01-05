EXPECTED_COVERAGE := 100

.DEFAULT_GOAL := test

develop: ; pipenv shell

install: ; pipenv install --dev

test: ; PYTHONPATH=. pipenv run pytest -vvv -p no:cacheprovider --cov-report term-missing --cov=. --cov-fail-under=$(EXPECTED_COVERAGE)
