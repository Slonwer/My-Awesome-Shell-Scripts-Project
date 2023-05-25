#!/bin/bash

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
