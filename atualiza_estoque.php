<?php
	require 'conecta_banco.php';
	require 'util.php';

	$ids_carrinho = array_map(function ($livro) {return retornaId($livro);}, $carrinho);

	$sql = "UPDATE livro SET estoque=estoque-1 WHERE id IN (:ids)";
	$ids = implode(',', $ids_carrinho);

	// Prepare statement
	$stmt = $conn->prepare($sql);
	$stmt->execute(['ids' => $ids])

	// execute the query
	$stmt->execute();

    $conn = null;
?>

