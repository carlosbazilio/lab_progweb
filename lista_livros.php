<?php
	include 'consulta_livros.php';

	foreach ($results as $value) {
		echo '<option value="' . $value['id'] . '|' . 
								 $value['titulo'] . '|' . 
								 $value['preco'] . '">';
		echo $value['titulo'] . ', ' . 
			 $value['autor'] . 
			 ' (R$ ' . $value['preco'] .')';
		echo '</option>';
	}

	//$sth = null; 
    $conn = null;
?>

