*Settings*
Documentation    Suite de testes para verificar a página principal

Resource    ${EXECDIR}/recursos/base.robot

Test Setup       Nova Sessão
Test Teardown    Finalização da sessão

*Test Cases*
Saldo Inicial
    [Tags]    fluxo_principal

    Validar Saldo    Papito    1000 