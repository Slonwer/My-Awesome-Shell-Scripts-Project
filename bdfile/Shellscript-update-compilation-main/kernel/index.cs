


using System;
using System.Data.Entity;

public class MyDbContext : DbContext {
    public MyDbContext() : base("name=MyConnectionString") {}

    // Defina suas classes de entidade aqui
}

class Program {
    static void Main() {
        try {
            using (var context = new MyDbContext()) {
                // Conexão bem sucedida
                Console.WriteLine("Conexão estabelecida com sucesso!");
            }
        } catch (Exception ex) {
            Console.WriteLine("Erro ao conectar ao banco de dados: " + ex.Message);
        }
    }
}
