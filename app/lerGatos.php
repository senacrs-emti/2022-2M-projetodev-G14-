<?php

$handle = fopen("gatos.csv", "r");
$header = fgetcsv($handle, 1000, ";");

while ($row = fgetcsv($handle, 1000, ";")) {
    $nota[] = array_combine($header, $row);
}
for($i = 0; $i < sizeof($nota); $i++) {
    $nota[$i]['NOME'] = strtolower($nota[$i]['NOME']);
    $nota[$i]['NOME'] = ucfirst($nota[$i]['NOME']);
    $nota[$i]['CARACTERISTICA'] = strtolower($nota[$i]['CARACTERISTICA']);
    $nota[$i]['CARACTERISTICA'] = ucfirst($nota[$i]['CARACTERISTICA']);
    echo 'INSERT INTO gatos VALUES (NULL,"'.$nota[$i]['NOME'].'","'.$nota[$i]['CARACTERISTICA'].'","'.$nota[$i]['IMG'].'");';
    echo '<br>';
}

fclose($handle);