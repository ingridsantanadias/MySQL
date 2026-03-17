use OficinaMecanica;

SELECT os.idOS,v.Placa,c.Nome as Cliente
    FROM Ordem_Servico os
    JOIN Veiculo v ON os.idVeiculo = v.idVeiculo
    JOIN Cliente c ON v.idCliente = c.idCliente
    LEFT JOIN OS_Servicos oss ON os.idOS = oss.idOS
    LEFT JOIN Servico s ON oss.idServico = s.idServico
    GROUP BY os.idOS;

SELECT e.NomeEquipe, COUNT(os.idOS) as Total_OS
  FROM Equipe e JOIN Ordem_Servico os ON e.idEquipe = os.idEquipe
  GROUP BY e.idEquipe
  HAVING COUNT(os.idOS) >= 1 -- Ajustado para 1 para teste de dados
  ORDER BY Total_OS DESC;