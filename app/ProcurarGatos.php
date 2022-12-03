<?php

class ProcurarGatos
{
    public static function procurar($nome)
    {
        $nome = strtolower($nome);
        $nome = ucfirst($nome);
        try {
            include_once 'DB.php';

            $db = DB::connect();
            $stmt = $db->prepare("SELECT * FROM gatos WHERE nome = :nomeGato");
            $stmt->bindParam(':nomeGato', $nome);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_OBJ);

            return $result;
        }catch(Exception $e) {
            echo 'erro';
        }

    }
}