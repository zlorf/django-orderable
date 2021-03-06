SHELL := /bin/bash

help:
	@echo "Usage:"
	@echo " make help    -- displays this help"
	@echo " make test    -- runs tests"
	@echo " make release -- pushes to pypi"

test:
	python orderable/tests/run.py

release:
	python setup.py register -r pypi sdist upload -r pypi
