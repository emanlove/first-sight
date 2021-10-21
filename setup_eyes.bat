rem  Install Robot Framework, Selenium, EyesLibrary packages and dependencies
pip install robotframework robotframework-seleniumlibrary eyes-robotframework

rem  Run EyesLibrary initialization script
python -m EyesLibrary init-config

rem  Set APPLITOOLS_API_KEY environment variable
set /p APPLITOOLS_API_KEY="Enter your Applitools API Key: "
