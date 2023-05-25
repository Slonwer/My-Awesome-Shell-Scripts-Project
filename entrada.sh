#!/bin/bash

echo "welcome to JDoodle"
#!/bin/bash

# Solicitar o número da tabuada ao usuário
read -p "Digite um número para exibir a tabuada: " numero

echo "Tabuada do número $numero:"

# Loop para exibir a tabuada de 1 a 10
for ((i=1; i<=10; i++))
do
    resultado=$((numero * i))
    echo "$numero x $i = $resultado"
done