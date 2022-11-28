<?php

class ProcurarCachorro
{
    public static function procurar($nome)
    {
        try {
            include_once 'DB.php';
            
            $db = DB::connect();
            $stmt = $db->prepare("SELECT * FROM cachorros WHERE Nome = :nomeCachorro");
            $stmt->bindParam(':nomeCachorro', $nome);
            $stmt->execute();

            return $result = $stmt->fetch(PDO::FETCH_OBJ);
        }catch(Exception $e) {
            echo 'erro';
        }

    }
}