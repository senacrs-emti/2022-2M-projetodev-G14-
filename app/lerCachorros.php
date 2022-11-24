<?php

$handle = fopen("cachorros.csv", "r");
$header = fgetcsv($handle, 1000, ";");

while ($row = fgetcsv($handle, 1000, ";")) {
    $nota[] = array_combine($header, $row);
}

for($i = 0;$i < sizeof($nota);$i++) {
    echo '<pre>';
    echo "INSERT INTO cachorros VALUES (NULL," . '"'. $nota[$i]['Nome'] . '",' . '"'. $nota[$i]['Caracteristicas'] . '"' . ',"' . $nota[$i]['Imagem'] . '"' . ");";
    echo '</pre>';
}

fclose($handle);