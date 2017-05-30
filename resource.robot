*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${BROWSER}        Firefox
${DELAY}          0
${GOOGLE URL}	https://www.google.com
${SEARCH TEXT}	Google News


*** Keywords ***
Go To Google Home Page
    Open Browser    ${GOOGLE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    
Google Home Page Should Be Open
    Title Should Be    Google

Search for the Google News
	Input Text    id=lst-ib    ${SEARCH TEXT}
	Click Button    name=btnG
	
Go To Google News
	Open Browser    https://news.google.com/	${BROWSER}
	Maximize Browser Window
	Page Should Contain	Recent

Go To Sports Section of News
	Click Link	https://news.google.com/news/section?cf=all&pz=1&ned=us&topic=snc
	Title Should be	   Science			

