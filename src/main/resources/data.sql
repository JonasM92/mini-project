-- Hint: Better not to add database schema as prefix (schema.table) because this does not port well to other machines that use a different schema name.
INSERT INTO user (email, password, user_name) values ('admin@mdb.be','superSecret','admin');
INSERT INTO user (email, password, user_name) values ('jonas.meuleman@gmail.com','42','jonas');

INSERT INTO genre (genre) VALUES ('Action'),('Animation'),('Biography'),('Comedy'),('Documentary'),('Drama'),('Family'),('Fantasy'),('Film-Noir'),('Horror'),('Musical'),('Science-Fiction'),('Thriller'),('Western');

INSERT INTO director (director_name, g, birth_date, picture) VALUES ('Alan Taylor', 'MALE', '1965-01-01')
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster) VALUES (127, 7, 'Something with dinosaurs', 'Jurassic World', 'https://www.youtube.com/watch?v=RFinNxS5KN4', 12, 'http://ia.media-imdb.com/images/M/MV5BMTQ5MTE0MTk3Nl5BMl5BanBnXkFtZTgwMjczMzk2NTE@._V1_SX214_AL_.jpg');
INSERT INTO director (director_name, g, birth_date, picture) VALUES ('Alan Taylor', 'MALE', '1965-01-01')
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster) VALUES (180, 4, 'Something with cars', 'Furious Seven', 'https://www.youtube.com/watch?v=Skpu5HaVkOc' , 1, 'http://ia.media-imdb.com/images/M/MV5BMTQxOTA2NDUzOV5BMl5BanBnXkFtZTgwNzY2MTMxMzE@._V1_SX214_AL_.jpg');
INSERT INTO director (director_name, g, birth_date, picture) VALUES ('Alan Taylor', 'MALE', '1965-01-01')
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster) VALUES (170, 6, 'Something with robots and time travel', 'Terminator:Genisys', 'https://www.youtube.com/watch?v=62E4FJTwSuc' , 12, 'http://ia.media-imdb.com/images/M/MV5BMjM1NTc0NzE4OF5BMl5BanBnXkFtZTgwNDkyNjQ1NTE@._V1_SX214_AL_.jpg');


INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Chris Pratt', 'MALE' , '1979-06-21', 'The guy with the raptors from that dinosaur movie', 'http://ia.media-imdb.com/images/M/MV5BNzg3MTgwOTgzMV5BMl5BanBnXkFtZTgwODIxMTUwMjE@._V1_UX214_CR0,0,214,317_AL_.jpg');
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Robert Downey jr.', 'MALE' , '1965-04-05', 'Iron Man', 'http://ia.media-imdb.com/images/M/MV5BMTAwNjk2NTUyMzleQTJeQWpwZ15BbWU3MDQ2NzQzMTc@._V1_UY317_CR2,0,214,317_AL_.jpg');
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Chloe Grace Moretz', 'FEMALE' , '1997-02-10', 'The girl from Kick-Ass', 'http://ia.media-imdb.com/images/M/MV5BMTk2ODk0Mzc0Ml5BMl5BanBnXkFtZTgwNDYzMzgzMzE@._V1_UY317_CR8,0,214,317_AL_.jpg');
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('David Tennant', 'MALE' , '1971-04-18', 'The tenth Doctor', 'http://ia.media-imdb.com/images/M/MV5BMTQxODM2MjUxNV5BMl5BanBnXkFtZTgwMjA4OTY0MTE@._V1_UY317_CR1,0,214,317_AL_.jpg');
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Jenna-Louise Coleman', 'FEMALE' , '1986-04-27', 'One of the companions of The Doctor', 'http://ia.media-imdb.com/images/M/MV5BMTUwODM0NDg1MF5BMl5BanBnXkFtZTcwNTcwMTk2Mw@@._V1_UX214_CR0,0,214,317_AL_.jpg');
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Alex Kingston', 'FEMALE' , '1963-03-11', 'Spoilers', 'http://ia.media-imdb.com/images/M/MV5BMTk3MTczNDIxOF5BMl5BanBnXkFtZTcwNDQ2MzI0Mg@@._V1_UY317_CR11,0,214,317_AL_.jpg');

