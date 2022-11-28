<?php
session_start();
var_dump($_SESSION);
?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Pokedex</title>
</head>

<body>
    <div id="pokedex">
        <div id="left">
            <div id="logo"></div>
            <div id="bg_curve1_left"></div>
            <div id="bg_curve2_left"></div>
            <div id="curve1_left">
                <div id="buttonGlass">
                    <div id="reflect"> </div>
                </div>
                <div id="miniButtonGlass1"></div>
                <div id="miniButtonGlass2"></div>
                <div id="miniButtonGlass3"></div>
            </div>
            <div id="curve2_left">
                <div id="junction">
                    <div id="junction1"></div>
                    <div id="junction2"></div>
                </div>
            </div>
            <div id="screen">
                <div id="topPicture">
                    <div id="buttontopPicture1"></div>
                    <div id="buttontopPicture2"></div>
                </div>
                <div id="picture">
                    <!-- TODO: IMAGEM DO POKEMON -->
                    
                    <?php
                    
                    if (isset($_SESSION['pokemonProcurado'])) {
                        echo '<img class="imgPokemon" src="'.$_SESSION['imgPokemon'].'">';
                    }

                    ?>

                </div>
                <div id="speakers">
                    <div class="sp"></div>
                    <div class="sp"></div>
                    <div class="sp"></div>
                    <div class="sp"></div>
                </div>
            </div>
            <div id="bigbluebutton"></div>
        </div>
        <div id="right">
            <div id="stats">
                <!-- TODO: ESTATISTICAS DO POKEMON -->

                <?php
                
                if (isset($_COOKIE['tipoProcura'])) {
                    switch($_COOKIE['tipoProcura']) {
                        case 'pokemon':
                            echo 'Procurando pokemons';
                            break;
                        case 'cachorro':
                            echo 'Procurando cachorros';
                            break;
                    };
                }
                if (isset($_SESSION['result'])) {
                    echo '<pre>';
                    print_r($_SESSION['result']->nome);
                    echo '</pre>';
                }

                ?>

            </div>
            <div id="blueButtons1">
      <div class="blueButton" id="pokemonBtn"><img id="pika" src="./imgs/pikachu.png"> </a></div>
      <div class="blueButton" id="cachorroBtn"><img id="charmander" src="./imgs/dog.gif"> </a></div>
      <div class="blueButton"><a href="app/index.php?inputPokemonNome=pidgeot"><img id="pidgeot" src="./imgs/Gato.png"> </a></div>
    </div>
            <div id="yellowBox1">
                <form action="app/index.php" method="get">
                    <input type="text" name="inputPokemonNome" id="inputPokemonNome" placeholder="Nome do Pokemon">
                </form>
            </div>
            <!-- <div id="yellowBox2"></div> -->
            <div id="bg_curve1_right"></div>
            <div id="bg_curve2_right"></div>
            <div id="curve1_right"></div>
            <div id="curve2_right"></div>
        </div>
    </div>

    <script src="index.js"></script>
</body>

</html>
<?php
session_destroy();
?>