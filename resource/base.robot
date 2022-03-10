***Settings***
Library         AppiumLibrary
Library         Process
Library         base.py
Resource        screens/screens.robot

***Variables***

${BASE_URL}                         https://tracking2nd-nonprod.ambevdevs.com.br/
${APP_ID}                           br.com.hbsis.entrega
${APK}                              Entrega-Facil-v2.14.1-release.apk

${SERVER_OPTION}                         id=${APP_ID}:id/rdbOutro
${SERVIDOR_Url}                     id=${APP_ID}:id/etBaseUrl
${login_Nome_Servidor}              id=${APP_ID}:id/txtLabelNomeServidor
${DROPDOWN_SERVER}                  id=${APP_ID}:id/dropdownServerType
${AUTH_INPUT}                       id=br.com.hbsis.entrega:id/etAuthBaseUrl
${TOUR_INPUT}                       id=br.com.hbsis.entrega:id/etToursBaseUrl
${PAYMENT_INPUT}                    id=br.com.hbsis.entrega:id/etPaymentsBaseUrl


##Login screen
${Login_Placa}                      id=${APP_ID}:id/txtLoginPlacaCavalo
${Login_CPF}                        id=${APP_ID}:id/txtLoginCPF
${Login_Entrar}                     id=${APP_ID}:id/btAutenticar
${KPI_}

${AUTH_URL}                         ${BASE_URL}aks/auth/
${TOURS_URL}                        ${BASE_URL}aks/tours/
${PAYMENT_URL}                      ${BASE_URL}aks/payment/



***Keywords***
Start Appium
    Start Process                       appium 
    ...                                 -a localhost -p 4723 — session-override -dc \”{\”\”noReset\”\”: \”\”false\”\”}\”\
    ...                                 shell=True              alias=appiumserver
    ...                                 stdout=${CURDIR}/appium_stdout.txt
    ...                                 stderr=${CURDIR}/appium_stderr.txt
    sleep                           10
    Process Should Be Running       appiumserver
Start Session
    Open Application                http://localhost:4723/wd/hub
    ...                             automationName=UiAutomator2
    ...                             platformName=Android
    ...                             deviceName=Emulator
    ...                             app=${EXECDIR}/app/${APK}
    ...                             udid=emulator-5554
    ...                             autoGrantPermissions=true

Fechar aplicativo
    Close Application
    ##Terminate Process               appiumserver kill=True
