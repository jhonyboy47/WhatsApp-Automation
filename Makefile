BLACK=black
MYPY=mypy
PYLINT=pylint
PYTHON=python3

# Run a Python tool with a specified module name
pytool = . venv/bin/activate && $(PYTHON) -m $(1) $(2)

.PHONY: beautiful check format lint pip-sync type-check venv

venv/bin/activate:
	$(PYTHON) -m venv venv

venv: venv/bin/activate ;

requirements: venv
	$(call pytool, pip, install -r requirements.txt)

type-check: venv
	$(call pytool, $(MYPY), .)

format: venv
	$(call pytool, $(BLACK), *.py .)
	$(call pytool, isort, *.py .)

lint: venv
	$(call pytool, $(PYLINT), *.py)
	$(call pytool, $(BLACK), --color --diff --check *.py .)
	$(call pytool, isort, --color --diff --check *.py .)

beautiful: format

check: type-check lint