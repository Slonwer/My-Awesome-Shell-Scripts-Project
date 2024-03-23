#include <iostream>
#include <mysql_connection.h>
#include <mysql_driver.h>

int main() {
    sql::mysql::MySQL_Driver *driver;
    sql::Connection *con;

    try {
        driver = sql::mysql::get_mysql_driver_instance();
        con = driver->connect("tcp://127.0.0.1:3306", "usuario", "senha");

        // Conexão bem sucedida
        std::cout << "Conexão estabelecida com sucesso!" << std::endl;

        delete con;
    } catch (sql::SQLException &e) {
        std::cout << "Erro ao conectar ao banco de dados: " << e.what() << std::endl;
    }

    return 0;
}
