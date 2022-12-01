SELECT usuario AS usuario,
CASE 
WHEN YEAR(MAX(historico.data_reproducao)) >= 2021 THEN'Usuário ativo'
ELSE 'Usuário inativo'
END
AS status_usuario
FROM usuarios AS usuario
LEFT JOIN historico AS historico
ON historico.usuario_id = usuario.usuario_id
GROUP BY usuario.usuario
ORDER BY usuario.usuario;