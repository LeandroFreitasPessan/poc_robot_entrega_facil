***Settings***
Resource            ../resource/base.robot
Resource            ../resource/screens/login.robot
##Test Setup          Abrir aplicativo
##Test Teardown       Fechar aplicativo

***Variables***

${SERVIDOR}                         id=br.com.hbsis.entrega:id/rdbOutro
${SERVIDOR_Url}                     id=br.com.hbsis.entrega:id/txtServidorConfig
${login_Nome_Servidor}              id=br.com.hbsis.entrega:id/txtLabelNomeServidor
${Login_Placa}                      id=br.com.hbsis.entrega:id/txtLoginPlacaCavalo
${Login_CPF}                        id=br.com.hbsis.entrega:id/txtLoginCPF
${Login_Entrar}                     id=br.com.hbsis.entrega:id/btAutenticar
${KPI_}

##${CAMPO_TEXT_SERVIDOR}      


***Test Cases***
Permissões
    Abrir aplicativo

    Wait Until Page Contains            A seguir você será encaminhado à uma tela de permissões do aplicativo. Selecione a opção "Permitir a sobreposição"      5
    click Text                          OK
    sleep                               8
    Press Keycode                       4   
    sleep                               5
    Wait Until Element Is Visible       id=br.com.hbsis.entrega:id/btSalvarConfig       5

Escolha do SERVIDOR

    click element                       ${SERVIDOR}
    Element Attribute Should Match      ${SERVIDOR}                                     checked                                                                 true
    Wait Until Element Is Visible       id=br.com.hbsis.entrega:id/txtServidorConfig    5
    Input text                          ${SERVIDOR_Url}                                 https://tracking2nd-nonprod.ambevdevs.com.br/
    click element                       id=br.com.hbsis.entrega:id/btSalvarConfig

login   

      Wait Until Page Contains          Outro    8
      Wait Until Element Is Visible     ${Login_Placa}          8                    
      click element                     ${Login_Placa}
      Input text                        ${Login_Placa}          MNP1234
      Press Keycode                     4
      Input text                        ${Login_CPF}            02788695055
      Press Keycode                     4 
      Wait Until Element Is Visible     ${Login_Entrar}         8
      click element                     ${Login_Entrar}

KPI

    wait Until Page Contains            CONTINUAR           8
    click text                          CONTINUAR
    wait Until Page Contains            CONCLUIR            8
    click text                          CONCLUIR         
       	







    

   ## click element       ${login_OK}
   ## Press Keycode       4
   ## sleep               2
   ## click element       xpath=//android.widget.ImageButton[@content-desc="Back"]
   ## sleep               4
   ## click text          ${SERVIDOR}
   ## Element Attribute Should Match      ${SERVIDOR}                 checked      true
   ## Input Text          ${CAMPO_TEXT_SERVIDOR}      http://tracking2nd-dev.ambevdevs.com.br/Pegasus.Web
   ## click element       id=br.com.hbsis.entrega:id/btSalvarConfig

