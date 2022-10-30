<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
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
            <div id="picture" class="tela">
                <!-- <img src="" alt="" height="170" /> -->
                <?php
                    if(isset($_SESSION['pokemonProcurado'])) {
                        echo '<div class="pokemonResultado">';
                            echo '<div class="infoPokemon">';
                                $resultObj = new StdClass;
                                echo '<span>'.'<b>'.'Nome:' .'</b>' . $resultObj->nome = $_SESSION['nomePokemon'] .'</span>'.'<br>';
                                echo '<span>'.'<b>'.'Habilidade: '.'</b>' . $resultObj->habilidade1 = $_SESSION['habilidade1Pokemon'] .'</span>'.'<br>';
                                if(isset($_SESSION['habilidade2Pokemon'])) {
                                    echo '<span>'.'<b>'.'Habilidade: '.'</b>' . $resultObj->habilidade2 = $_SESSION['habilidade2Pokemon'] . '</span>'.'<br>';
                                }
                                echo '<span>'.'<b>'.'Tipo: '.'</b>' . $resultObj->tipo1Pokemon = $_SESSION['tipo1Pokemon'] .'</span>'. '<br>';
                                if(isset($_SESSION['tipo2Pokemon'])) {
                                    echo '<span>'.'<b>'.'Tipo: '.'</b>' . $resultObj->tipo2Pokemon = $_SESSION['tipo2Pokemon'] .'</span>' .'<br>';
                                }
                            echo '</div>';
                            echo '<div class="imgPokemon">';
                                echo '<img src=' . $_SESSION['imgPokemon'] . '>';
                            echo '</div>';
                        echo '</div>';

                        session_destroy();
                    }
                ?>
            </div>
            <div id="buttonbottomPicture"></div>
            <div id="speakers">
                <div class="sp"></div>
                <div class="sp"></div>
                <div class="sp"></div>
                <div class="sp"></div>
            </div>
            </div>
            <div id="bigbluebutton"></div>
            <div id="barbutton1"></div>
            <div id="barbutton2"></div>
            <div id="cross">
            <div id="leftcross">
                <div id="leftT"></div>
            </div>
            <div id="topcross">
                <div id="upT"></div>
            </div>
            <div id="rightcross">
                <div id="rightT"></div>
            </div>
            <div id="midcross">
                <div id="midCircle"></div>
            </div>
            <div id="botcross">
                <div id="downT"></div>
            </div>
            </div>
        </div>
        <div class="page turn"></div>
        <div class="right turn" id="right">
            <div id="stats">
                <form action="app/index.php" method="get">
                    <input type="text" name="pokemon" id="pokemonInput">
                </form>
                <strong></strong><br/>
                <strong></strong><br/>
                <strong></strong><br/>
                <strong></strong><br/><br/>
                <strong></strong><br/>
            </div>
            <div id="blueButtons1">
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            </div>
            <div id="blueButtons2">
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            <div class="blueButton"></div>
            </div>
            <div id="miniButtonGlass4"></div>
            <div id="miniButtonGlass5"></div>
            <div id="barbutton3"></div>
            <div id="barbutton4"></div>
            <div id="yellowBox1"></div>
            <div id="yellowBox2"></div>
            <div id="bg_curve1_right"></div>
            <div id="bg_curve2_right"></div>
            <div id="curve1_right"></div>
            <div id="curve2_right"></div>
        </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="main.js"></script>
</body>
</html>