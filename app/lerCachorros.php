<?php

require 'DB.php';

if(isset($_POST['inputNomeCachorro'])) {
    $nomeCachorro = $_POST['inputNomeCachorro'];
    
    $db = DB::connect();
    $stmt = $db->prepare("SELECT * FROM cachorros WHERE Nome = :nomeCachorro");
    $stmt->bindParam(':nomeCachorro', $nomeCachorro);
    var_dump($stmt);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_OBJ);
}

$handle = fopen("cachorros.csv", "r");
$header = fgetcsv($handle, 1000, ";");

while ($row = fgetcsv($handle, 1000, ";")) {
    $nota[] = array_combine($header, $row);
}

// for($i = 0;$i < sizeof($nota);$i++) {
//     echo '<pre>';
//     echo "INSERT INTO cachorros VALUES (NULL," . '"'. $nota[$i]['Nome'] . '",' . '"'. $nota[$i]['Caracteristicas'] . '"' . ',"' . $nota[$i]['Imagem'] . '"' . ");";
//     echo '</pre>';
// }

fclose($handle);

?>

<form action="" method="post">
    <input type="text" name="inputNomeCachorro" id="inputNomeCachorro">
</form>