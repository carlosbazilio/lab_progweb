<?php
	// require 'conecta_banco.php';

    // $sth = $conn->prepare("SELECT * FROM livro WHERE estoque > 0 ORDER BY titulo");
    // $sth->execute();
    // // http://php.net/manual/pt_BR/pdostatement.fetchall.php
    // $results = $sth->fetchAll(PDO::FETCH_ASSOC);

	// //$sth = null; 
    // $conn = null;


    // [ (7, 'Batalha do apocalipse', 'Eduardo Sophr', 32.89, 1),
    // (5, 'Orgulho e preconceito', 'Jane Austen', 34.37, 1)
    // (10, 'Prince of fools', 'Mark Lawrence', 192, 1),
    // (1, 'Mundo de Sofia', 'Jostein Gaarder', 31.9, 1),
    // (2, 'Na Minha Pele', 'Lazaro Ramos', 20.7, 1),
    // (8, 'A bússola de ouro', 'Philip Pullman', 32.79, 0),
    // (9, 'A Arma Escarlate', 'Renata Ventura', 34.42, 0),
    // (3, 'O Príncipe', 'Maquiavel', 11.99, 1),
    // (4, 'O Perigo de uma História Única', 'Chimamanda Ngozi Adichie', 14.21, 1),
    // (6, 'O Homem Mais Rico da Babilônia', 'George Samuel', 15.89, 1) ]

    $results = [
        [
            "id" => 7,
            "titulo" => "Batalha do apocalipse",
            "autor" => "Eduardo Sophr",
            "preco" => 32.89,
            "quant" => 1
        ],
        [
            "id" => 5,
            "titulo" => "Orgulho e preconceito",
            "autor" => "Jane Austen",
            "preco" => 34.37,
            "quant" => 1
        ],
        [
            "id" => 1,
            "titulo" => "Mundo de Sofia",
            "autor" => "Jostein Gaarder",
            "preco" => 31.9,
            "quant" => 1
        ],
        [
            "id" => 10,
            "titulo" => "Prince of fools",
            "autor" => "Mark Lawrence",
            "preco" => 192,
            "quant" => 1
        ],
        [
            "id" => 2,
            "titulo" => "Na Minha Pele",
            "autor" => "Lazaro Ramos",
            "preco" => 20.7,
            "quant" => 1
        ]
    ]
?>

