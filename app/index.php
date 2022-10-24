<?php


$nome = $_GET['pokemon'];
function getPokemon($nome) {
    $arrContextOptions=array(
        "ssl"=>array(
            "verify_peer"=>false,
            "verify_peer_name"=>false,
        ),
    );
    $linkApi = "https://pokeapi.co/api/v2/pokemon/$nome";
    // Caso de erro (ou não ache o pokemon ou escreva errado o nome do pokemon)
    if ($data = file_get_contents($linkApi, false, stream_context_create($arrContextOptions))) {
        $data = file_get_contents($linkApi, false, stream_context_create($arrContextOptions));
        $pokemon = json_decode($data);
        echo 'Nome: ' . $pokemon->name . '<br>';
        echo 'Habilidade: ' . $pokemon->abilities[0]->ability->name . '<br>';
        echo 'Habilidade: ' . $pokemon->abilities[1]->ability->name . '<br>';
        echo 'Tipo: ' . $pokemon->types[0]->type->name . '<br>';
        if(isset($pokemon->types[1]->type->name)) {
            echo 'Tipo: ' . $pokemon->types[1]->type->name;
        }
        echo '<img src='.$pokemon->sprites->back_default;
        enviarDadosPokemon($pokemon->name, $pokemon->abilities[0]->ability->name, $pokemon->abilities[1]->ability->name,
        $pokemon->types[0]->type->name, $pokemon->types[1]->type->name, $pokemon->sprites->front_default);
    }else {
        header('Location: ../index.php');
    }
}

function enviarDadosPokemon($nome, $habilidade1, $habilidade2, $tipo1, $tipo2, $img){
    session_start();
    $_SESSION['pokemonProcurado'] = TRUE;
    $_SESSION['nomePokemon'] = $nome;
    $_SESSION['habilidade1Pokemon'] = $habilidade1;
    $_SESSION['habilidade2Pokemon'] = $habilidade2;
    $_SESSION['tipo1Pokemon'] = $tipo1;
    $_SESSION['tipo2Pokemon'] = $tipo2;
    $_SESSION['imgPokemon'] = $img;
    header('Location: ../index.php');
}

getPokemon($nome);