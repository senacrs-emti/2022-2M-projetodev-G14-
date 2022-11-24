<?php
session_start();
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
                <div id="topPicture2">
                    <div id="buttontopPicture12"></div>
                    <div id="buttontopPicture22"></div>
                </div>
                <div id="picture2">
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
            <div class="troca-titulo" id="bigbluebutton"></div>
        </div>
        <div id="right">
            <div id="stats2">
                <!-- TODO: ESTATISTICAS DO POKEMON -->

                <?php
                
                if (isset($_SESSION['pokemonProcurado'])) {
                    echo '<div class="infoPokemon">';
                        echo '<strong>Nome:</strong>'.$_SESSION['nomePokemon'].'<br/>';
                        echo '<strong>Tipo:</strong>'.$_SESSION['tipo1Pokemon'].'<br/>';
                        echo '<strong>Habilidade:</strong>'.$_SESSION['habilidade1Pokemon'].'<br/>';
                        echo '<strong>Habilidade:</strong>'.$_SESSION['habilidade2Pokemon'].'<br/>';
                    echo '</div>';
                }

                ?>

            </div>
            <div id="blueButtons1">
      <div class="blueButton"><a href="app/index.php?inputPokemonNome=pikachu"><img id="pika" src="./imgs/pikachu.png"> </a></div>
      <div class="blueButton"><a href="app/index.php?inputPokemonNome=charmander"><img id="charmander" src="./imgs/charmander.png"> </a></div>
      <div class="blueButton"><a href="app/index.php?inputPokemonNome=pidgeot"><img id="pidgeot" src="./imgs/pidgeot.png"> </a></div>
      <div class="blueButton"><a href="app/index.php?inputPokemonNome=magikarp"><img id="magikarp" src="./imgs/magikarp.webp"> </a></div>
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