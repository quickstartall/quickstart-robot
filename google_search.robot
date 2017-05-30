*** Settings ***
Documentation     A test suite with a single test Google Search.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Search Google News
    Go To Google Home Page
    Google Home Page Should Be Open
	Search for the Google News
	[Teardown]    Close Browser
	
Go To Google News Page
	Go To Google News
	[Teardown]    Close Browser
