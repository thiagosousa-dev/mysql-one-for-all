SELECT
	  U.user_name AS usuario,
    IF(MAX(YEAR(US.reproduction_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS U, SpotifyClone.users_songs AS US
WHERE U.user_id = US.user_id
GROUP BY U.user_name
ORDER BY U.user_name;