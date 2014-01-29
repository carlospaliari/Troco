<?php

function troco($reais)
{
    $cem = quantidade_notas($reais, 100);
    $reais = calcula_restante($reais, $cem, 100);


    $cinquenta = quantidade_notas($reais, 50);
    $reais = calcula_restante($reais, $cinquenta, 50);


    $vinte = quantidade_notas($reais, 20);
    $reais = calcula_restante($reais, $vinte, 20);


    $dez = quantidade_notas($reais, 10);
    $reais = calcula_restante($reais, $dez, 10);


    $cinco = quantidade_notas($reais, 5);
    $reais = calcula_restante($reais, $cinco, 5);

    $dois = quantidade_notas($reais, 2);
    $reais = calcula_restante($reais, $dois, 2);


    $um = quantidade_notas($reais, 1);




    return [
        '100.00' => $cem,
        '50.00' => $cinquenta,
        '20.00' => $vinte,
        '10.00' => $dez,
        '5.00' => $cinco,
        '2.00' => $dois,
        '1.00' => $um
    ];
}

function quantidade_notas($troco, $valornota)
{
    return floor($troco / $valornota);
}

function calcula_restante($valor, $quantidade, $valor_nota)
{
    return $valor = $valor - $quantidade * $valor_nota;
}