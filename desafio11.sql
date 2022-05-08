SELECT
	S.song_name AS nome_musica,
    CASE
		WHEN S.song_name LIKE '%Streets%' THEN REPLACE(S.song_name, 'Streets', 'Code Review')
		WHEN S.song_name LIKE '%Her Own%' THEN REPLACE(S.song_name, 'Her Own', 'Trybe')
		WHEN S.song_name LIKE '%Inner Fire%' THEN REPLACE(S.song_name, 'Inner Fire', 'Project')
		WHEN S.song_name LIKE '%Silly%' THEN REPLACE(S.song_name, 'Silly', 'Nice')
		WHEN S.song_name LIKE '%Circus%' THEN REPLACE(S.song_name, 'Circus', 'Pull Request')
        ELSE S.song_name
	END AS novo_nome
FROM SpotifyClone.songs AS S
WHERE 
	S.song_name LIKE '%Streets%'
    OR S.song_name LIKE '%Her Own%'
    OR S.song_name LIKE '%Inner Fire%'
    OR S.song_name LIKE '%Silly%'
    OR S.song_name LIKE '%Circus%'
ORDER BY S.song_name;
