SELECT
	  COUNT(US.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.users_songs AS US, SpotifyClone.users AS U
WHERE US.user_id = U.user_id AND U.user_name = 'Bill';