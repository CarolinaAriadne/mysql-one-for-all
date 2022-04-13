SELECT
	art.nome_artista AS artista,
    nome_album AS album,
    COUNT(usuario_id) AS seguidores
FROM
    SpotifyClone.artista AS art
        INNER JOIN
    SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.seguidores AS seg ON art.artista_id = seg.artista_id
    GROUP BY art.nome_artista, alb.nome_album
	ORDER BY seguidores DESC, artista, album;

