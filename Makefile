# Simple Makefile to help with build process

build_packages:
	python setup.py sdist bdist_wheel

pypi_upload_test: clean build_packages
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*

make clean:
	rm -rf dist/*
	rm -rf osl_devops_tools.egg-info
	python setup.py clean --all
