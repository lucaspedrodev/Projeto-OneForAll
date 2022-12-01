SELECT
	  u.usuario usuario,
    COUNT(h.usuario_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos) /60,2) AS total_minutos
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.historico h ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes c ON h.cancao_id = c.cancao_id
GROUP BY u.usuario
ORDER BY u.usuario;