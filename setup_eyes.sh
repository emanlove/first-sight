#!/bin/sh
# Run this script to install and initialize the library and then set your API key

# Install Robot Framework, Selenium, EyesLibrary packages and dependencies
pip install robotframework robotframework-seleniumlibrary eyes-robotframework

# Run EyesLibrary initialization script
python -m EyesLibrary init-config

# Set APPLITOOLS_API_KEY environment variable
read -p "Enter your Applitools API Key: " api_key
export APPLITOOLS_API_KEY=$api_key
