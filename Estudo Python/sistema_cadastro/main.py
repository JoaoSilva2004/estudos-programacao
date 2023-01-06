import sys
from PyQt5 import QtWidgets, uic

import sqlite3

def cadastrar_novo_usuario(nome, email, senha, confirmar_senha):
    erro = False

    # passo 1: validar as informações de cadastro
    if nome:
        pass

    elif "@" in email and ".com":
        pass

    elif senha == confirmar_senha and len(senha) > 6:
        pass

    else:
        erro = True

    # passo 2: Criar e se conectar com o banco de dados
    try:
        banco = sqlite3.connect("data_user.db")
        cursor = banco.cursor()

        cursor.execute("CREATE TABLE IF NOT EXISTS data_user (nome text, email text, senha text)")
        cursor.execute(f"INSERT INTO data_user VALUES ('{nome}', '{email}', '{senha}')")

        banco.commit()
        banco.close()
    
    except sqlite3.Error as erro:
        print(erro)
        erro = False
    return erro

    # passo 3: inserir as informações do usuario no banco
    
#if cadastrar_novo_usuario("nicolas", "nicolas@gmail.com", "teste123", "teste123"):
    #print("Cadastro ok")
#else:
    #print("Cadastro falhou")

def log_in_with_email_and_password():
    email = janela.lineEdit.text()
    senha = janela.lineEdit_2.text()

    try:
        banco = sqlite3.connect("data_user.db")
        cursor = banco.cursor()
        
        cursor.execute(f"SELECT senha FROM data_user WHERE email='{email}'")

        senha_cap = cursor.fetchall()

        try:
            if senha == senha_cap[0][0]:
                print("Entrou")
            else:
                print("Não entrou")
        except:
            pass

    except sqlite3.Error as error:
        print(error)

app = QtWidgets.QApplication([])
janela = uic.loadUi("interface_login.ui")

janela.pushButton.clicked.connect(log_in_with_email_and_password)

janela.show()
sys.exit(app.exec_())
