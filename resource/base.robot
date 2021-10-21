***Settings***
Library         AppiumLibrary

***Keywords***
Abrir aplicativo
    Open Application                http://localhost:4723/wd/hub
    ...                             automationName=UiAutomator2
    ...                             platformName=Android
    ...                             deviceName=Emulator
    ...                             app=${EXECDIR}/app/Entrega-Facil-v1.24.2-release.apk
    ...                             udid=emulator-5554
    ...                             autoGrantPermissions=true

Fechar aplicativo
    Close Application