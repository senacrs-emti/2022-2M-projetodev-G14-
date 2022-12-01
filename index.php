<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css.css">
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
                        if (isset($_COOKIE['tipoProcura'])) {
                            switch ($_COOKIE['tipoProcura']) {
                                case 'pokemon':
                                    if (isset($_SESSION['result']) && $_SESSION['result'] != FALSE) {
                                        echo '<img id="imgPokemon" src="'.$_SESSION['result']->img.'">';
                                    }
                                    break;
                                case 'cachorro':
                                    if (isset($_SESSION['result']) && $_SESSION['result'] != FALSE) {
                                        echo '<img id="imgCachorro" src="'.$_SESSION['result']->imagem.'">';
                                    }
                                    break;
                                case 'gato':
                                    if (isset($_SESSION['result']) && $_SESSION['result'] != FALSE) {
                                        echo '<img id="imgGato" src="'.$_SESSION['result']->imagem.'">';
                                    }
                            };
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
                        switch ($_COOKIE['tipoProcura']) {
                            case 'pokemon':
                                echo 'Procurando pokemons';
                                if (isset($_SESSION['result']) && $_SESSION['result'] != FALSE) {
                                    echo '<h2> <b>Nome:</b>'.$_SESSION['result']->nome.'</h2>';
                                    echo '<h3> <b>Habilidades:</b> <br>'.$_SESSION['result']->habilidades[0].'</h3>';
                                    if(isset($_SESSION['result']->habilidades[1])) {
                                      echo '<h3>'.$_SESSION['result']->habilidades[1].'</h3>';
                                    }
                                    echo '<h3> <b>Tipo:</b> <br>'.$_SESSION['result']->tipos[0].'</h3>';
                                    if(isset($_SESSION['result']->tipos[1])) {
                                        echo '<h3>'.$_SESSION['result']->tipos[1].'</h3>';
                                    }
                                }
                                break;
                            case 'cachorro':
                                echo 'Procurando cachorros';
                                if (isset($_SESSION['result']) && $_SESSION['result'] != FALSE) {
                                    echo '<h2> <b>Nome:</b>'.$_SESSION['result']->nome.'</h2>';
                                    echo '<h3> <b>Caracteristicas:</b> <br>'.$_SESSION['result']->caracteristicas.'</h3>';
                                }
                                break;
                            case 'gato':
                                echo 'Procurando gatos';
                                if (isset($_SESSION['result']) && $_SESSION['result'] != FALSE) {
                                    echo '<h2> <b>Nome:</b>'.$_SESSION['result']->nome.'</h2>';
                                    echo '<h3> <b>Caracteristicas:</b> <br>'.$_SESSION['result']->caracteristicas.'</h3>';
                                }
                        };
                    }
                ?>

            </div>
            <div id="yellowBox1">
                <form action="app/index.php" method="get">
                    <input type="text" name="inputNome" id="inputNome" placeholder="<?php echo (@$_COOKIE['tipoProcura'] == false)? 'Escolha um modo' : 'Nome do '.$_COOKIE['tipoProcura'] ?>">
                </form>
            </div>
            <div id="bg_curve1_right"></div>
            <div id="bg_curve2_right"></div>
            <div id="curve1_right"></div>
            <div id="curve2_right"></div>
        </div>
    </div>

    <script src="main.js"></script>
</body>

</html>
<?php
session_destroy();
?>