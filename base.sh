#!/bin/bash

# Arquivo banco já está definido

#--------------configuração--------------------------#

SEP=":"     # Separador utilizado no banco de dados
TEMP="temp.$$"   # Arquivo temporário
MASCARA='$'     # Caractere de máscara

# Verificar se a base de dados foi informada
[ "$BANCO" ] || {
    echo "Base de dados não informada. Use a variável BANCO"
    exit 1
}

# Verificar as permissões de leitura e escrita da base de dados
[ -r "$BANCO" -a -w "$BANCO" ] || {
    echo "Base travada, confira as permissões de leitura e escrita."
    exit 1
}

mascara() {
    tr "$SEP" "$MASCARA"   # Função para aplicar máscara
}

desmacara() {
    tr "$MASCARA" "$SEP"   # Função para remover máscara
    echo "Desmacara fim"
}

tem_chave() {
    grep -i -q "$1$SEP" "$BANCO"   # Verificar se uma chave existe no banco
}

apagar_registro() {
    tem_chave "$1" || return   # Verificar se a chave existe antes de apagar
    grep -v -i "$1$SEP" "$BANCO" > "$TEMP"
    mv "$TEMP" "$BANCO"
    echo "O registro $1 foi apagado"
}

insere_registro() {
    local chave=$(echo "$1" | cut -d "$SEP" -f1)
    if tem_chave "$chave"; then
        echo "A chave $chave já está cadastrada no banco"
        return 1
    else
        echo "$*" >> "$BANCO"   # Inserir novo registro no banco
        echo "Registro inserido com sucesso"
    fi
    return 0
}

echo "Fim banco"
{
    return 0
}

#!/bin/bash

#------------------Teste de script--------------#

$(seq 5 10)

#------------------Iniciando as variáveis------------#

a=1
z=${1:-1}

a=1
z=${1:-1}

[ "$2" ] && {
    a=$1
    z=$2
}

[ $a -gt $z ] && o="-"

while [ $a -ne $z ]; do
    echo $a
    eval "a=\$((a $o 1))"
done

echo $a
