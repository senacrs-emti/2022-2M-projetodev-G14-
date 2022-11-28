<?php

class ProcurarPokemon
{
    public static function procurar($nomePokemon)
    {   
        $nomePokemon = strtolower($nomePokemon);
        $api = "https://pokeapi.co/api/v2/pokemon/$nomePokemon";
        if ($data = file_get_contents($api)) {
            $result = json_decode($data);
            $dataObj = new stdClass;
            $dataObj->nome = $result->name;
            $dataObj->habilidades = array($result->abilities[0]->ability->name, $result->abilities[1]->ability->name);
            if (isset($result->types[1]->type->name)) {
                $dataObj->tipos = array($result->types[0]->type->name, $result->types[1]->type->name);   
            }else {
                $dataObj->tipos = array($result->types[0]->type->name);
            }
            $dataObj->img = $result->sprites->front_default;
            
            return $dataObj;
        }
        echo 'erro';
    }
}