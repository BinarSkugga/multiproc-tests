#!/bin/bash

rm -rf build
rm -rf dist

python setup.py sdist bdist_wheel
python -m twine upload -u __token__ -p $PYPI_TOKEN --verbose dist/*

rm -rf build
rm -rf dist
