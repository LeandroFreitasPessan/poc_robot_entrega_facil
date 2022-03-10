***Settings***
Resource            ../resource/base.robot
Resource            ../resource/screens/login.robot
##Test Setup          Abrir aplicativo
##Test Teardown       Fechar aplicativo

***Variables***

${PLACA}                                PCT4040
${CPF}                                  47356260344

##${CAMPO_TEXT_SERVIDOR}      


***Test Cases***
##Check if Emulator is open
#    ${emulator_is_running}      Is Process Running      qemu-system-x86_64
#    IF      ${emulator_is_running}
#        Log     qemu-system-x86_64 is Running
#    ELSE
#        Log     No emulator running, starting one
#        Start Process                   emulator    -avd       Pixel_4_XL_API_30
Connecting device and opening Entrega Fácil
    Start Session
Check Permissions
    Set Appium Timeout                  8
    Wait Until Page Contains            A seguir você será encaminhado à uma tela de permissões do aplicativo. Selecione a opção "Permitir a sobreposição"      5
    Click Text                          OK
    BuiltIn.Sleep                               4
    Press Keycode                       4   
    BuiltIn.Sleep                               4
    Wait Until Element Is Visible       id=br.com.hbsis.entrega:id/btSalvarConfig

Select Server
    Click element                       ${SERVER_OPTION}
    ##Element Attribute Should Match      ${SERVIDOR}                                     checked                                                                 true
    Wait Until Element Is Visible       ${SERVIDOR_Url}
    Input text                          ${SERVIDOR_Url}                                 ${BASE_URL}
    Input text                          ${AUTH_INPUT}                                   ${AUTH_URL}
    Input text                          ${TOUR_INPUT}                                   ${TOURS_URL}
    Input text                          ${PAYMENT_INPUT}                                ${PAYMENT_URL}
    Swipe                               650     1500    650       500

    click element                       ${DROPDOWN_SERVER}


    BuiltIn.Sleep                               1
    #Tap                                 ${None}         725     2195
    click element                       id=br.com.hbsis.entrega:id/btConfirm
    BuiltIn.Sleep                               1
    click element                       id=br.com.hbsis.entrega:id/btConfirm
    BuiltIn.Sleep                               1
    click element                       id=br.com.hbsis.entrega:id/btSalvarConfig

##Validar a tela de transição entre seleção de servidor e Login?

Login   
    Wait Until Element Is Visible       ${Login_Entrar}       20
    Wait Until Page Contains            Outro    15
    Wait Until Element Is Visible       ${Login_Placa}
    click element                       ${Login_Placa}
    Input text                          ${Login_Placa}          ${PLACA}
    Press Keycode                       4
    Input text                          ${Login_CPF}            ${CPF}
    Press Keycode                       4 
    Wait Until Element Is Visible       ${Login_Entrar}
    click element                       ${Login_Entrar}

#Validate Loading
    #Wait until element is Visible     id=android:id/message
    #Wait until element is Visible     id=android:id/progress

Multiple routes check
    Run Keyword And Ignore Error        Wait Until Element Is Visible        ${select_route}
    ${element}                          Run Keyword And Ignore Error         Get Webelement ${select_route}
    IF      ${element} != ${None}
        click element                   id=br.com.hbsis.entrega:id/dropdownRoutes
        click element                   id=br.com.hbsis.entrega:id/btSelectRoute
        click element                   id=br.com.hbsis.entrega:id/btSelectRoute
    END

    #check multiples routes

    #click element                     id=br.com.hbsis.entrega:id/dropdownRoutes

    #click element                     id=br.com.hbsis.entrega:id/btSelectRoute
    #sleep                             1
    #click element                     id=br.com.hbsis.entrega:id/btSelectRoute

KPI

    Wait until element is Visible     id=br.com.hbsis.entrega:id/app_bar           180
    wait Until Page Contains          CONTINUAR                                    30
    click text                        CONTINUAR
Search Screen
    wait Until Page Contains          CONCLUIR                                     8
    click text                        CONCLUIR         
       	

Validating Pix Tutorial
    wait until element is Visible   ${pix_tutorial.close_btn}
    wait until element is Visible   ${pix_tutorial.image}
    wait until element is Visible   ${pix_tutorial.next_btn}

    click text                      Vamos lá
    BuiltIn.Sleep                   1
    #wait until page Contains        ${text_page2}
    click text                      Prosseguir
    BuiltIn.Sleep                   1
    #wait until page Contains        ${text_page3}
    click text                      Prosseguir
    BuiltIn.Sleep                   1
    #wait until page Contains        ${text_page4}
    click text                      Concluir

Validating NPS
    BuiltIn.sleep                   15
    wait until element is visible   ${NPS.question_element}
    Swipe                               650     1500    650       500
    click element                   ${NPS.remember_later}

Entering Delivery Screen
    wait until element is Visible   id=br.com.hbsis.entrega:id/card_list_view       15



    

   ## click element       ${login_OK}
   ## Press Keycode       4
   ## sleep               2
   ## click element       xpath=//android.widget.ImageButton[@content-desc="Back"]
   ## sleep               4
   ## click text          ${SERVIDOR}
   ## Element Attribute Should Match      ${SERVIDOR}                 checked      true
   ## Input Text          ${CAMPO_TEXT_SERVIDOR}      http://tracking2nd-dev.ambevdevs.com.br/Pegasus.Web
   ## click element       id=br.com.hbsis.entrega:id/btSalvarConfig

