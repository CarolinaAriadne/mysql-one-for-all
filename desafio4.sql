SELECT dad.nome_usuario AS usuario,
IF(MAX(data_reproducao > '2021'),'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.dados_usuario AS dad
INNER JOIN SpotifyClone.historico_reproducoes AS his
ON dad.usuario_id = his.usuario_id
GROUP BY dad.nome_usuario 
ORDER BY dad.nome_usuario;