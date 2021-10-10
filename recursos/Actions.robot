*Keywords*
Validar Saldo
    [Arguments]                ${usuario}                          ${valor_saldo}
    Wait For Elements State    css=div.navbar-end a.navbar-item    visible           5
    Get Text                   css=div.navbar-end a.navbar-item    equal             Olá ${usuario}, seu saldo é R$ ${valor_saldo}    

Realizar Pix
    [Arguments]    ${pix}

    Click                text=Fazer PIX
    Select Options By    css=.is-expanded select    text                ${pix}[banco]
    Fill Text            id=chave-pix               ${pix}[chavePix]
    Fill Text            id=valor                   ${pix}[valor]
    Click                text=Enviar PIX 

Valida Transação Pix
    [Arguments]    ${transacao}

    ${element}                 Set Variable    xpath=//td[contains(text(),"${transacao}[chavePix]")]/..
    Wait For Elements State    ${element}      visible                                                     5
    Get Text                   ${element}      contains                                                    ${transacao}[valor]
    Get Text                   ${element}      contains                                                    ${transacao}[banco]

Mensagem de erro exibida
    [Arguments]    ${mensagem}

    ${element_mensagem}        Set Variable           css=.message-body .media-content
    Wait For Elements State    ${element_mensagem}    visible                             5
    Get Text                   ${element_mensagem}    equal                               ${mensagem} 

Validar Mensagem Campo Obrigatório
    [Arguments]                ${mensagem}
    Wait For Elements State    css=small.alert >> text=${mensagem}    visible    5

Realizar Depósito
    [Arguments]    ${valor}

    Click        text=Depositar
    Fill Text    css=.modal-deposito .swal2-input      ${valor}
    Click        css=.modal-deposito .swal2-confirm

Valida Transação Depósito
    [Arguments]    ${valor}

    ${element}                 Set Variable    xpath=//td[contains(text(),"Depósito online")]/..//span[contains(text(),"${valor}")]/../..
    Wait For Elements State    ${element}      visible                                                                                       5

Valida Depósito Inválido
    Wait For Elements State    css=.swal2-popup >> text=O valor do depósito deve ser maior que ZERO!    visible    5