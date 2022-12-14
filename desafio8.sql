SELECT a.artista, al.album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
WHERE a.artista = 'Elis Regina'
ORDER BY al.album;