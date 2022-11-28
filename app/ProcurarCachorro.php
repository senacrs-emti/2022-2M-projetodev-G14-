<?php

class ProcurarCachorro
{
    public static function procurar($nome)
    {
        $nome = ucfirst($nome);
        try {
            include_once 'DB.php';

            $db = DB::connect();
            $stmt = $db->prepare("SELECT * FROM cachorros WHERE nome = :nomeCachorro");
            $stmt->bindParam(':nomeCachorro', $nome);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_OBJ);

            return $result;
        }catch(Exception $e) {
            echo 'erro';
        }

    }
}