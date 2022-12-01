<?php

class DB
{
    public static function connect()
    {
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        $dbName = 'animais';
        
        try {
            return $conn = new PDO("mysql:host=$servername;dbname=$dbName", $username, $password);
        }catch(Exception $e) {
            echo 'Erro DB -> '.$e->getMessage();
        }
    }
}