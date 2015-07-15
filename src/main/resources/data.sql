INSERT INTO movies.user (email, password, user_name) values ('admin@mdb.be','superSecret','admin');
INSERT INTO movies.user (email, password, user_name) values ('jonas.meuleman@gmail.com','42','jonas');

INSERT INTO movies.genre (genre) VALUES ('Action'),('Animation'),('Biography'),('Comedy'),('Documentary'),('Drama'),('Family'),('Fantasy'),('Film-Noir'),('Horror'),('Musical'),('Science-Fiction'),('Thriller'),('Western');

INSERT INTO movies.movie (length, rating, summary, title, trailer, genre_id) VALUES (127, 7, 'Something with dinosaurs', 'Jurassic World', 'https://www.youtube.com/watch?v=RFinNxS5KN4', 12);
INSERT INTO movies.movie (length, rating, summary, title, trailer, genre_id) VALUES (180, 4, 'Something with cars', 'Furious Seven', 'https://www.youtube.com/watch?v=Skpu5HaVkOc' , 1);

INSERT INTO movies.actor (actor_name, g, birth_date, bio) VALUES ('Chris Pratt', 'MALE' , '1979-06-21', 'The guy with the raptors from that dinosaur movie');
INSERT INTO movies.actor (actor_name, g, birth_date, bio) VALUES ('Robert Downey jr.', 'MALE' , '1965-04-05', 'Iron Man');
INSERT INTO movies.actor (actor_name, g, birth_date, bio) VALUES ('Chloe Grace Moretz', 'FEMALE' , '1997-02-10', 'The girl from Kick-Ass');
INSERT INTO movies.actor (actor_name, g, birth_date, bio) VALUES ('David Tennant', 'MALE' , '1971-04-18', 'The tenth Doctor');
INSERT INTO movies.actor (actor_name, g, birth_date, bio) VALUES ('Jenna-Louise Coleman', 'FEMALE' , '1986-04-27', 'One of the companions of The Doctor');
INSERT INTO movies.actor (actor_name, g, birth_date, bio) VALUES ('Alex Kingston', 'FEMALE' , '1963-03-11', 'Spoilers');

