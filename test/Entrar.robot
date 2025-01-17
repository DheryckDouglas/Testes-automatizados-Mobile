*** Settings ***
Library           AppiumLibrary


*** Variables ***

${Entrar}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextSwitcher/android.widget.Button


*** Test Cases ***

Open App
    Open Application  http://localhost:4723
    ...  platformName=Android
    ...  deviceName=Android Emulator
    ...  automationName=UIAutomator2
    ...  app=C:\\Users\\Dheryck\\Documents\\GitHub\\Testes-automatizados-Mobile\\yodapp\\yodapp-beta.apk
    ...  udid=emulator-5554
    ...  autoGrantPermissions=true
    
    Wait Until Element Is Visible  id=com.qaxperience.yodapp:id/mi_title
    
    Sleep   1
    Wait Until Element Is Visible  ${Entrar}
    Click Element    ${Entrar}
    Sleep  2


