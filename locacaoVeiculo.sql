SELECT
    marca AS MarcaVeiculo,
    modelo AS ModeloVeiculo,
    COUNT(LocacaoVeiculo.idLocacao) AS NumeroDeAlugueis
FROM
    Veiculo
JOIN
    LocacaoVeiculo ON Veiculo.idVeiculo = LocacaoVeiculo.idVeiculo
GROUP BY
    marca, modelo
ORDER BY
    NumeroDeAlugueis DESC;