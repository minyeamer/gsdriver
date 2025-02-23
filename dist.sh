#!/bin/bash
python -m setup.py sdist bdist_wheel
for file in dist/gcp-webdriver*; do
    mv "$file" "${file/gcp-webdriver/gcp_webdriver}"
done
python -m twine upload dist/*
rm -rf build
rm -rf dist
rm -rf gcp_webdriver.egg-info