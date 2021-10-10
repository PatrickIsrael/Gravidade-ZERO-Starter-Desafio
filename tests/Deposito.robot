*Settings*
Documentation    Suite de testes para verificar a funcionalidade de Depósito

Resource    ${EXECDIR}/recursos/base.robot
Library     ${EXECDIR}/recursos/massas/Pix.py

Test Setup       Nova Sessão
Test Teardown    Finalização da sessão

*Test Cases*
Fazer Depósito
    [Tags]    fluxo_principal

    Realizar Depósito            100 
    Valida Transação Depósito    100

Depósito com valor Zero
    [Tags]    valor_invalido

    Realizar Depósito           0
    Valida Depósito Inválido