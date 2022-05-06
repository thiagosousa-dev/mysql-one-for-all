DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(100) NOT NULL,
  plan_value DECIMAL(5,2) NOT NULL,
);

CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(100) NOT NULL,
  user_age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
);

CREATE TABLE users_plans(
  user_id INT NOT NULL,
  plan_id INT NOT NULL,
  signature_date DATE NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id),
  CONSTRAINT PRIMARY KEY(user_id, plan_id)
);

CREATE TABLE artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(100) NOT NULL
);

CREATE TABLE albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  release_year YEAR,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  seconds_duration INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
);

CREATE TABLE users_artists(
  artist_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  CONSTRAINT PRIMARY KEY(artist_id, user_id)
);

CREATE TABLE users_songs(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  reproduction_date DATETIME NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id),
  CONSTRAINT PRIMARY KEY(user_id, song_id)
);

INSERT INTO plans (plan_name, plan_value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);

INSERT INTO users (user_name, user_age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 4),
  ('Norman', 58, 4),
  ('Patrick', 33, 2)
  ('Vivian', 26, 3),
  ('Carol', 19, 3),
  ('Angelina', 42, 2),
  ('Paul', 46, 2);

INSERT INTO users_plans (user_id, plan_id, signature_date)
VALUES
  (1, 1, '2019-10-20'),
  (2, 2, '2017-12-30'),
  (3, 3, '2019-06-05'),
  (4, 4, '2020-05-13'),
  (5, 4, '2017-02-17'),
  (6, 2, '2017-01-06')
  (7, 3, '2018-01-05'),
  (8, 3, '2018-02-14'),
  (9, 2, '2018-04-29'),
  (10, 2, '2017-01-17');

INSERT INTO artists (artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');

INSERT INTO albums (album_name, artist_id, release_year)
VALUES
  ('Envious', 1, 1990),
  ('Exuberant', 1, 1993),
  ('Hallowed Steam', 2, 1995),
  ('Incandescent', 3, 1998),
  ('Temporary Culture', 4, 2001),
  ('Library of liberty', 4, 2003)
  ('Chained Down', 5, 2007),
  ('Cabinet of fools', 5, 2012),
  ('No guarantees', 5, 2015),
  ('Apparatus', 6, 2015);

INSERT INTO songs (song_name, album_id, seconds_duration)
VALUES
  ('Soul For Us', 1, 200),
  ('Reflections Of Magic', 1, 163),
  ('Dance With Her Own', 1, 116),
  ('Troubles Of My Inner Fire', 2, 203),
  ('Time Fireworks', 2, 152),
  ('Magic Circus', 3, 105),
  ('Honey, So Do I', 3, 207),
  ("Sweetie, Let's Go Wild", 3, 139),
  ('She Knows', 3, 244),
  ('Fantasy For Me', 4, 100),
  ('Celebration Of More', 4, 146),
  ('Rock His Everything', 4, 223),
  ('Home Forever', 4, 231),
  ('Diamond Power', 4, 241),
  ("Let's Be Silly", 4, 132),
  ('Thang Of Thunder', 5, 240),
  ('Words Of Her Life', 5, 185),
  ('Without My Streets', 5, 176),
  ('Need Of The Evening', 6, 190),
  ('History Of My Roses', 6, 222),
  ('Without My Love', 6, 111),
  ('Walking And Game', 6, 123),
  ('Young And Father', 6, 197),
  ('Finding My Traditions"', 7, 179),
  ('Walking And Man', 7, 229),
  ('Hard And Time', 7, 135),
  ("Honey, I'm A Lone Wolf", 7, 150),
  ("She Thinks I Won't Stay Tonight", 8, 166),
  ("He Heard You're Bad For Me", 8, 154),
  ("He Hopes We Can't Stay", 8, 210),
  ('I Know I Know', 8, 117),
  ("He's Walking Away", 9, 159),
  ("He's Trouble", 9, 138),
  ('I Heard I Want To Bo Alone', 9, 120),
  ('I Ride Alone', 9, 151),
  ('Honey"', 10, 79),
  ('You Cheated On Me', 10, 95),
  ("Wouldn't It Be Nice", 10, 213),
  ('Baby', 10, 136),
  ('You Make Me Feel So..', 10, 83);

INSERT INTO users_artists (artist_id, user_id)
VALUES
  (1, 1),
  (4, 1),
  (3, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (1, 3),
  (4, 4),
  (5, 5),
  (6, 5),
  (6, 6),
  (3, 6),
  (1, 6),
  (2, 7),
  (5, 7),
  (1, 8),
  (5, 8),
  (6, 9),
  (4, 9),
  (3, 9),
  (2, 10),
  (6, 10);