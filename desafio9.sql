SELECT 
    COUNT(id_musica) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_reproducoes AS his
INNER JOIN 
SpotifyClone.dados_usuario AS dad ON his.usuario_id = dad.usuario_id
WHERE dad.nome_usuario = 'Bill';