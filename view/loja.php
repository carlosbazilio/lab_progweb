<?php
    $results = $_REQUEST['results']
?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="public/styles/global.css">
</head>
<body>

    <h1>Produtos</h1>

    <!-- <form action="adiciona_carrinho.php"> -->
    <form action="/?class=LivroController&acao=add">
        <label for="livros">Selecione seus livros:</label><br/>
        <select name="livros[]" id="livros" multiple>
            <?php 
                foreach ($results as $value) {
                    echo '<option value="' . $value['id'] . '|' . 
                                             $value['titulo'] . '|' . 
                                             $value['preco'] . '">';
                    echo $value['titulo'] . ', ' . 
                         $value['autor'] . 
                         ' (R$ ' . $value['preco'] .')';
                    echo '</option>';
                }
            ?>
        </select>
        <br/><br/>
        <input type="submit" value="Comprar">
    </form>

    <p>
        Para acessar o carrinho, <a href="adiciona_carrinho.php">clique aqui</a>.
    </p>

</body>
</html>