<?php

require 'ProcurarPokemon.php';
require 'ProcurarCachorro.php';

if($_GET['inputPokemonNome'] == '') {
    header('Location: ../index.php');
    return;
}

$nome = $_GET['inputPokemonNome'];
switch($_COOKIE['tipoProcura']) {
    case 'pokemon':
        session_start();
        $_SESSION['result'] = ProcurarPokemon::procurar($nome);
        header('Location: ../index.php');
        break;
    case 'cachorro':
        session_start();
        $_SESSION['result'] = ProcurarCachorro::procurar($nome);
        header('Location: ../index.php');
        break;
    
    default:
        echo 'erro';
        break;
}
