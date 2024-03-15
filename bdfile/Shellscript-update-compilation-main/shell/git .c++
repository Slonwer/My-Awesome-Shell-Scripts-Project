                          Modificado  

#include <iostream>
#include <string>
#include <cstdlib> // Para usar system()
#include <fstream> // Para manipulação de arquivos

using namespace std;

// Função para executar um comando no terminal
void executarComando(const string& comando) {
    cout << "Executando comando: " << comando << endl;
    system(comando.c_str());
}

// Função para escrever em um arquivo de texto
void escreverEmArquivo(const string& nomeArquivo, const string& conteudo) {
    ofstream arquivo(nomeArquivo);
    if (arquivo.is_open()) {
        arquivo << conteudo;
        arquivo.close();
        cout << "Texto escrito em " << nomeArquivo << endl;
    } else {
        cerr << "Erro ao abrir o arquivo " << nomeArquivo << endl;
    }
}

int main (){
    string comando;
    string nomeArquivo;
    string conteudo;

    while (cin >> comando) {
        if (comando == "escrever") {
            cin >> nomeArquivo;
            cin >> conteudo;
            escreverEmArquivo(nomeArquivo, conteudo);
        } else if (comando == "executar") {
            cin >> comando;
            executarComando(comando);
        }
    }

    return 0;
}
