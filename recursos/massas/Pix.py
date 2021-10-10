
def pix_valido():
    pix = {
        "usuario":  "Papito",
        "saldoInicial": 1000,
        "banco": "Nubank",
        "chavePix": "21 9876-54321",
        "valor": "100",
        "saldoFinal": 900
    }
    return pix


def pix_zero():
    pix = {
        "usuario":  "Papito",
        "saldoInicial": 1000,
        "banco": "Neon",
        "chavePix": "21 9876-54321",
        "valor": "0",
    }
    return pix


def pix_negativo():
    pix = {
        "usuario":  "Papito",
        "saldoInicial": 1000,
        "banco": "Next",
        "chavePix": "21 9876-66321",
        "valor": "-1",
    }
    return pix


def pix_sem_saldo():
    pix = {
        "usuario":  "Papito",
        "saldoInicial": 1000,
        "banco": "Next",
        "chavePix": "21 9876-66321",
        "valor": "1001",
    }
    return pix


def pix_campo_obrigatorio(campo):
    if campo == "banco":
        banco = ""
    else:
        banco = "C6 Bank"

    if campo == "chavePix":
        chavePix = ""
    else:
        chavePix = "21 9876-54321"

    if campo == "valor":
        valor = ""
    else:
        valor = "10"

    pix = {
        "usuario":  "Papito",
        "saldoInicial": 1000,
        "banco": banco,
        "chavePix": chavePix,
        "valor": valor,
    }
    return pix
