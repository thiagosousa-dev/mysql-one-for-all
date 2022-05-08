SELECT
	  A.artist_name AS artista,
    AB.album_name AS album
FROM SpotifyClone.albums AS AB, SpotifyClone.artists AS A
WHERE AB.artist_id = A.artist_id AND A.artist_name = 'Walter Phoenix';