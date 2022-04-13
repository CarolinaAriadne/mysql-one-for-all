SELECT COUNT(DISTINCT mus.id_musica) AS cancoes, COUNT(DISTINCT art.artista_id) AS artistas, COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.musicas AS mus, SpotifyClone.artista as art, SpotifyClone.albuns as alb;


