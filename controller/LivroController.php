<?php
    class LivroController {
        public $carrinho = [];

        public function listar() {  
            require_once 'model/lista_livros.php';
            
            $_REQUEST["results"] = $results;
            
            require_once "view/loja.php";
        }

        public function add() {
            require_once "view/adiciona_carrinho.php";
        }
    }
?>