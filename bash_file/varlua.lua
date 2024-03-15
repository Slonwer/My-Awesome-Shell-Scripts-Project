#!/usr/bin/env lua

-- Criação das variáveis locais utilizadas nesse script
USUARIO = "Vaamonde"
USUARIOS = io.popen("who"):read("*a")
TESTE01 = os.execute("test A == B")
TESTE02 = os.execute("test -f /etc/passwd")
DATE = os.date("%d/%m/%Y - %H:%M:%S")
MENU_EXIBICAO = "Menu de exibição"
MENU_DIA_HORA = "Menu de dia e hora"
SAIR = "Sair"

-- Utilizando a função print para exibir na tela os valores das variáveis locais
print("Impressão na tela.............: Olá Mundo!!!")
print("Nome do usuário...............: " .. USUARIO)
print("Nome do arquivo shell.........: " .. arg[0])
print("Quantidade de parâmetros......: " .. #arg)
print("Todos os parâmetros...........: " .. table.concat(arg, " "))
print("Parâmetro 01..................: " .. (arg[1] or ""))
print("Parâmetro 02..................: " .. (arg[2] or ""))
print("Status do comando anterior....: " .. (TESTE01 == 0 and "VERDADEIRO" or "FALSO"))
print("PID do processo...............: " .. tostring(os.getpid()))
print("Usuário logado................: " .. USUARIOS)
print("Comando: test A == B..........: " .. (TESTE01 == 0 and "VERDADEIRO" or "FALSO"))
print("Comando: test -f /etc/passwd..: " .. (TESTE02 == 0 and "VERDADEIRO" or "FALSO"))
print(MENU_EXIBICAO)
print(MENU_DIA_HORA)
print(SAIR)

-- Utilizando a estrutura condicional if para fazer os testes lógicos
if USUARIO == "root" then
    print("Teste de usuário..............: Usuário é root.")
elseif USUARIO == "admin" then
    print("Teste de usuário..............: Usuário é admin.")
else
    print("Teste de usuário..............: Usuário não é root ou admin.")
end

-- Utilizando a estrutura condicional if-then-elseif-else para aumentar os testes lógicos
if TESTE01 == 0 then
    print("Resultado do comando test é...: VERDADEIRO")
elseif TESTE01 == 1 then
    print("Resultado do comando test é...: FALSO")
else
    print("Resultado do comando test é...: NÃO IDENTIFICADO")
end

-- Utilizando a estrutura condicional case para fazer os testes lógicos
case_result = ""
if TESTE01 == 0 then
    case_result = "0 - VERDADEIRO"
elseif TESTE01 == 1 then
    case_result = "1 - FALSO"
else
    case_result = "NÃO IDENTIFICADO"
end
print("Resultado do comando case é...: " .. case_result)

-- Utilizando a estrutura condicional case com entrada do usuário através do comando io.read
print("Digite as letras: A, B ou C...: ")
local letras = io.read()
case letras:lower() do
    when "a" do
        print("A letra digitada foi..........: " .. letras)
    end
    when "b" do
        print("A letra digitada foi..........: " .. letras)
    end
    when "c" do
        print("A letra digitada foi..........: " .. letras)
    end
    otherwise
        print("Letra digitada incorretamente.: " .. letras)
    end
end

-- Utilizando a estrutura de loop for para verificar os números digitados junto com o comando io.read
print("Uma sequência de números......: ")
local numeros = io.read()
for valor in numeros:gmatch("%S+") do
    print("Valores passados para o Loop..: " .. valor)
end

-- Utilizando a estrutura de loop for para gerar uma tabuada junto com o comando io.read
print("Digite um número da tabuada...: ")
local numero = tonumber(io.read())
for i = 0, 10 do
    print(numero .. " x " .. i .. "...: " .. (numero * i))
end

-- Utilizando a estrutura de loop while para alcançar os valores desejados junto com o comando io.read
print("Digite um número de início....: ")
local inicio = tonumber(io.read())
print("Digite um número do fim.......: ")
local fim = tonumber(io.read())
while inicio <= fim do
    print("Valor de sequência numérica...: " .. inicio)
    inicio = inicio + 1
end

-- Exemplo de uso da estrutura condicional while para um menu de opções
local opcao = ""
while opcao ~= "1" and opcao ~= "2" do
    print("Qual a opção que você deseja? ")
    opcao = io.read()
    if opcao == "1" then
        print("Bem-vindo!")
    elseif opcao == "2" then
        print(os.date())
    end
end

-- Exemplo de uso da estrutura condicional if-then com a função os.rename para verificar se um arquivo existe
local file1 = "arquivo1.txt"
local file2 = "arquivo2.txt"
if os.rename(file1, file2) then
    print(file1 .. " existe")
else
    print(file1 .. " não existe")
end

-- Exemplo de uso da estrutura condicional if-then-else com operadores de comparação
local n1 = 10
local n2 = 20
if n1 < n2 then
    print(n1 .. " é menor que " .. n2)
end
