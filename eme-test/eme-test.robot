*** Settings ***
Suite Setup       Open Browser To Test Page
Suite Teardown    Close Browser
Resource          lhg-robot-config.robot

*** Test Cases ***
Run EME test
    Input Video URL    ${TEST VIDEO URL}
    Select Key System    ${KEY SYSTEM}
    Sleep    2s
    Scroll Page Down To Bottom
    Play Video
    Sleep    10s
    Capture Page Screenshot    filename=After.png
    There should be face in image    After.png
