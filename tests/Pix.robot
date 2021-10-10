*Settings*
Documentation    Suite de testes para verificar a funcionalidade de Pix

Resource    ${EXECDIR}/recursos/base.robot
Library     ${EXECDIR}/recursos/massas/Pix.py

Test Setup       Nova Sessão
Test Teardown    Finalização da sessão

*Test Cases*
Fazer PIX
    [Tags]    fluxo_principal

    ${pix}    Pix Valido

    Validar Saldo           ${pix}[usuario]    ${pix}[saldoInicial]    
    Realizar Pix            ${pix} 
    Validar Saldo           ${pix}[usuario]    ${pix}[saldoFinal] 
    Valida Transação Pix    ${pix}

PIX com valor ZERO
    [Tags]    valor_invalido

    ${pix}    Pix Zero

    Validar Saldo               ${pix}[usuario]                         ${pix}[saldoInicial]    
    Realizar Pix                ${pix}
    Mensagem de erro exibida    Oops. Transferir ZERO é osso hein...

PIX com valor NEGATIVO
    [Tags]    valor_invalido

    ${pix}    Pix Negativo

    Validar Saldo               ${pix}[usuario]                      ${pix}[saldoInicial]    
    Realizar Pix                ${pix}
    Mensagem de erro exibida    Oops. Valor para PIX incorreto...

PIX com valor superior ao saldo
    [Tags]    valor_invalido

    ${pix}    Pix Sem Saldo

    Validar Saldo               ${pix}[usuario]                ${pix}[saldoInicial]    
    Realizar Pix                ${pix}
    Mensagem de erro exibida    Oops. Saldo insuficiente :(

PIX Sem informar Banco
    [Tags]    campo_obrigatorio

    ${pix}    Pix Campo Obrigatorio    banco

    Validar Saldo                         ${pix}[usuario]        ${pix}[saldoInicial]    
    Realizar Pix                          ${pix}
    Validar Mensagem Campo Obrigatório    * Escolha um banco.

PIX Sem informar Chave
    [Tags]    campo_obrigatorio

    ${pix}    Pix Campo Obrigatorio    chavePix

    Validar Saldo                         ${pix}[usuario]           ${pix}[saldoInicial]    
    Realizar Pix                          ${pix}
    Validar Mensagem Campo Obrigatório    * Informe a Chave PIX.

PIX Sem informar Valor
    [Tags]    campo_obrigatorio

    ${pix}    Pix Campo Obrigatorio    valor

    Validar Saldo                         ${pix}[usuario]                          ${pix}[saldoInicial]    
    Realizar Pix                          ${pix}
    Validar Mensagem Campo Obrigatório    * Informe o valor para transferência.

