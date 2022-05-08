SELECT 
	  S.song_name as cancao,
	  COUNT(US.song_id) AS reproducoes
FROM SpotifyClone.users_songs AS US
INNER JOIN SpotifyClone.songs AS S 
ON US.song_id = S.song_id
GROUP BY US.song_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;