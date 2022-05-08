SELECT
    S.song_name AS nome,
    COUNT(US.song_id) AS reproducoes
FROM SpotifyClone.users_songs AS US
INNER JOIN SpotifyClone.users AS U
ON US.user_id = U.user_id
INNER JOIN SpotifyClone.songs AS S
ON US.song_id = S.song_id
INNER JOIN SpotifyClone.plans AS P
ON P.plan_id = U.plan_id
WHERE P.plan_name = 'gratuito' OR P.plan_name = 'pessoal'
GROUP BY S.song_name
ORDER BY nome;