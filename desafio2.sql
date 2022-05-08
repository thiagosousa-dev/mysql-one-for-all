SELECT COUNT(S.song_id) AS cancoes, 
COUNT(DISTINCT ART.artist_id) AS artistas, 
COUNT(DISTINCT AB.album_id) AS albuns 
FROM SpotifyClone.albums AS AB
INNER JOIN SpotifyClone.artists AS ART 
ON AB.artist_id = ART.artist_id
INNER JOIN SpotifyClone.songs AS S 
ON AB.album_id = S.album_id;