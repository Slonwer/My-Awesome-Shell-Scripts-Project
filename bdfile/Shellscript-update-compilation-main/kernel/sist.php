<?php
class Produto {
    private $nome;
    private $quantidade;
    

    public function __construct($nome, $quantidade) {
        $this->nome = $nome;
        $this->quantidade = $quantidade;
    }

    public function getQuantidade() {
        return $this->quantidade;
    }
}

class Cliente {
    private $nome;

    public function __construct($nome) {
        $this->nome = $nome;
    }
}

class Funcionario {
    private $nome;

    public function __construct($nome) {
        $this->nome = $nome;
    }
}

class Dados {
    public $dados;

    public function __construct($dados) {
        $this->dados = $dados;
    }
}

class Unitario {
    public $unitarios;

    public function __construct($unitario) {
        $this->unitarios = $unitario;
    }
}

$estoque = [
    new Produto("Produto A", 10),
    new Produto("Produto B", 15),
    new Produto("Produto C", 5)
];

$clientes = [
    new Cliente("Cliente 1"),
    new Cliente("Cliente 2"),
    new Cliente("Cliente 3")
];

$funcionarios = [
    new Funcionario("Funcionário 1"),
    new Funcionario("Funcionário 2"),
    new Funcionario("Funcionário 3")
];

$dados = new Dados("Dados aplicados");
$unitario = new Unitario("valores do unitario foram aplicados");

function somarEstoque($estoque) {
    $totalEstoque = 0;
    foreach ($estoque as $produto) {
        $totalEstoque += $produto->getQuantidade();
    }
    return $totalEstoque;
}

function contarClientes($clientes) {
    return count($clientes);
}

function contarFuncionarios($funcionarios) {
    return count($funcionarios);
}

$totalEstoque = somarEstoque($estoque);
$totalClientes = contarClientes($clientes);
$totalFuncionarios = contarFuncionarios($funcionarios);

echo "Total de estoque: " . $totalEstoque . "<br>";
echo "Total de clientes: " . $totalClientes . "<br>";
echo "Total de funcionários: " . $totalFuncionarios . "<br>";
echo "Dados aplicados: " . $dados->dados . "<br>";
echo "Valores do unitário foram aplicados: " . $unitario->unitarios . "<br>";
?>
