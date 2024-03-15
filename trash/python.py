# Variáveis
usuario = "Vaamonde"
usuarios = ["usuario1", "usuario2", "usuario3"]
teste01 = 0
teste02 = 1
data_hora = "28/06/2023 - 12:34:56"

# Impressão na tela
print("Impressão na tela.............: Olá Mundo!!!")
print("Nome do usuário...............:", usuario)
print("Quantidade de usuários........:", len(usuarios))
print("Teste01.......................:", teste01)
print("Teste02.......................:", teste02)
print("Data e hora...................:", data_hora)

# Testes lógicos
if usuario == "root":
    print("Teste de usuário..............: Usuário é root.")
elif usuario == "admin":
    print("Teste de usuário..............: Usuário é admin.")
else:
    print("Teste de usuário..............: Usuário não é root ou admin.")

if teste01 == 0:
    print("Resultado do teste01 é........: VERDADEIRO")
elif teste01 == 1:
    print("Resultado do teste01 é........: FALSO")
else:
    print("Resultado do teste01 é........: NÃO IDENTIFICADO")

# Utilizando case
case teste02:
    when 0:
        print("Resultado do teste02 é........: 0 - VERDADEIRO")
    when 1:
        print("Resultado do teste02 é........: 1 - FALSO")
    else:
        print("Resultado do teste02 é........: NÃO IDENTIFICADO")

# Recebendo valores do usuário
letras = input("Digite as letras: A, B ou C...: ")
case letras:
    when "A", "a":
        print("A letra digitada foi..........:", letras)
    when "B", "b":
        print("A letra digitada foi..........:", letras)
    when "C", "c":
        print("A letra digitada foi..........:", letras)
    else:
        print("Letra digitada incorretamente.:", letras)

# Loop for
numeros = input("Uma sequência de números......: ")
for valor in numeros.split():
    print("Valores passados para o Loop..:", valor)

# Tabuada
numero = int(input("Digite um número da tabuada...: "))
for i in range(11):
    print(numero, "x", i, "=", numero * i)

# Loop while
inicio = int(input("Digite um número de início....: "))
fim = int(input("Digite um número do fim.......: "))
while inicio <= fim:
    print("Valor de sequência numérica...:", inicio)
    inicio += 1
