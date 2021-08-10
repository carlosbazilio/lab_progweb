<?php
	require 'conecta_banco.php';
	require 'util.php';

	$ids_carrinho = array_map(function ($livro) {return retornaId($livro);}, $carrinho);

	var_dump($ids_carrinho);

	$in  = str_repeat('?,', count($ids_carrinho) - 1) . '?';
	$sql = "UPDATE livro SET estoque=estoque-1 WHERE id IN ($in)";
	// $ids = implode(',', $ids_carrinho);

	// Prepare statement
	$stmt = $conn->prepare($sql);

	// execute the query
	$stmt->execute($ids_carrinho);

    $conn = null;
?>


