#!/bin/bash

# Função para exibir uma pergunta e suas opções de resposta
function exibir_pergunta() {
  echo "$1"
  echo "a) $2"
  echo "b) $3"
  echo "c) $4"
}

# Função para verificar se a resposta está correta
function verificar_resposta() {
  if [ "$1" == "$2" ]; then
    echo "Resposta correta!"
  else
    echo "Resposta incorreta. A resposta correta é $2."
  fi
  echo
}

# Pergunta 1
exibir_pergunta "Qual é a capital da França?" "Paris" "Roma" "Madri"
read -p "Digite a opção correta (a, b ou c): " resposta
verificar_resposta "$resposta" "a"

# Pergunta 2
exibir_pergunta "Quem pintou a Mona Lisa?" "Leonardo da Vinci" "Pablo Picasso" "Vincent van Gogh"
read -p "Digite a opção correta (a, b ou c): " resposta
verificar_resposta "$resposta" "a"

# Pergunta 3
exibir_pergunta "Qual é o maior planeta do sistema solar?" "Júpiter" "Saturno" "Marte"
read -p "Digite a opção correta (a, b ou c): " resposta
verificar_resposta "$resposta" "a"
