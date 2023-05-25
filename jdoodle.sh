#!/bin/bash
# Arquivo banco já está definido

#--------------configuração--------------------------#

SEP=":"
TEMP="temp.$$"
MASCARA='$'

[ "$BANCO" ] || {
    echo "Base de dados não informada. Use a variável BANCO"
    return 1
}

[ -r "$BANCO" -a -w "$BANCO" ] || {
    echo "Base travada, confira as permissões de leitura e escrita."
    return 1
}

mascara() {
    tr "$SEP" "$MASCARA"
}

desmacara() {
    tr "$MASCARA" "$SEP"
}

tem_chave() {
    grep -i -q "$1$SEP" "$BANCO"
}

apagar_registro() {
    tem_chave "$1" || return
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
        echo "$*" >> "$BANCO"
        echo "Registro inserido com sucesso"
    fi
    return 0
}
echo "Fim banco"
{
    return 0
}
