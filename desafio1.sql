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

CREATE TABLE albuns(
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
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  CONSTRAINT PRIMARY KEY(user_id, artist_id)
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