<?php
    require_once 'controller/sessao.php';

    $classe = $_GET['class'];
    $metodo = $_GET['acao'];

    require_once 'controller/'.$classe.'.php';

    $obj = new $classe();
    $obj->$metodo();
?>