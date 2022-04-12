
SELECT DISTINCT
    (dad.nome_usuario) AS usuario,
    COUNT(his.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.dados_usuario AS dad
        INNER JOIN
    SpotifyClone.historico_reproducoes AS his ON dad.usuario_id = his.usuario_id
        INNER JOIN
    SpotifyClone.musicas AS mus ON mus.id_musica = his.id_musica
GROUP BY his.usuario_id
ORDER BY dad.nome_usuario;
	