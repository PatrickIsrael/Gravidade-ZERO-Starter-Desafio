*Settings*
Documentation    Base da automação
Resource         Actions.robot
Library          Browser
Library          String

*Variables*
${URL_BASE}            https://nbank.vercel.app/
${BANNER_HOME_PAGE}    css=.carousel

*Keywords*
Nova Sessão
    New Browser                chromium               headless=False
    New Page                   ${URL_BASE}
    Wait For Elements State    ${BANNER_HOME_PAGE}    visible           5

Finalização da sessão
    Take Screenshot