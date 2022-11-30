<?php

require 'ProcurarPokemon.php';
require 'ProcurarCachorro.php';
require 'ProcurarGatos.php';

if($_GET['inputNome'] == '') {
    header('Location: ../index.php');
    return;
}

$nome = $_GET['inputNome'];
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
    case 'gato':
        session_start();
        $_SESSION['result'] = ProcurarGatos::procurar($nome);
        header('Location: ../index.php');
        break;
        
    default:
        session_start();
        $_SESSION['result'] = 'Escolha um modo';
        header('Location: ../index.php');
        break;
}
