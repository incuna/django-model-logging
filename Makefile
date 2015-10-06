SHELL := /bin/bash

help:
	@echo "Usage:"
	@echo "    make release    | Release to pypi."

release:
	@python setup.py register sdist bdist_wheel upload

test:
	@coverage run ./model_logging/tests/run.py
	@coverage report
