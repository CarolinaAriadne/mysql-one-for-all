SELECT nome_artista AS artista,
nome_album AS album
FROM SpotifyClone.artista AS art
INNER JOIN
SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
WHERE art.nome_artista = 'Walter Phoenix'
ORDER BY album; 
