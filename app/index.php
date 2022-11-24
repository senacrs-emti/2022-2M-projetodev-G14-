<?php


$nome = $_GET['inputPokemonNome'];
function getPokemon($nome) {
    $linkApi = "https://pokeapi.co/api/v2/pokemon/$nome";
    if ($data = file_get_contents($linkApi)) {
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
        return;
    }
    header('Location: ../index.php');

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

if($_GET['inputPokemonNome'] == '') {
    header('Location: ../index.php');
}else{
    getPokemon($nome);
}