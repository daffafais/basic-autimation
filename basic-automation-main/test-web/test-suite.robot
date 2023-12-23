*** Settings ***
Library           SeleniumLibrary

*** variables ***


*** Test Cases ***

* Settings *
Library           SeleniumLibrary

* variables *
${BROWSER}     chrome
${HOST}    http://localhost/barber-admin/login.php

${EMAIL}    admin
${EMAIL-2}    wronguser   # wrong user
${PASS-1}    admin    # correct password
${PASS-2}    wrongpass    # wrong password

${COMPANY}    201011400144
${TITLE}    Daffa
${LOCATION}     07TPLE007
${TAGS}    engineering manager software
${JOBEMAIL}    teknik informatika
${WEBSITE}    7
${DESCRIPTION}     Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 

* Test Cases *



testcase-login-1
    Open Browser    http://localhost/barber-admin/login.php    chrome
    input text        name:username       admin
    Input Text    name:password    123456789
    Click Element     xpath://button[@type='submit']
    Close Browser


testcase-login-2
    Open Browser    http://localhost/barber-admin/login.php    chrome
    input text        name:username       admin
    Input Text    name:password    7uyhgt7ygu7
    Click Element     xpath://button[@type='submit']
    Close Browser