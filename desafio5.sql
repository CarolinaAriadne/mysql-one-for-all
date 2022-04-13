SELECT mus.nome_musica AS cancao, COUNT(hi.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS mus
INNER JOIN SpotifyClone.historico_reproducoes AS hi
ON mus.id_musica = hi.id_musica
GROUP BY hi.id_musica
ORDER BY reproducoes DESC, cancao
LIMIT 2;