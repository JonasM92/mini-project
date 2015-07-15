-- Hint: Better not to add database schema as prefix (schema.table) because this does not port well to other machines that use a different schema name.

INSERT INTO movie (length, rating, summary, title, trailer) VALUES (127, 7, 'Something with dinosaurs', 'Jurassic World', 'https://www.youtube.com/watch?v=RFinNxS5KN4');
INSERT INTO movie (length, rating, summary, title, trailer) VALUES (180, 4, 'Something with cars', 'Furious Seven', 'https://www.youtube.com/watch?v=Skpu5HaVkOc' );

INSERT INTO actor (actor_name, g, birth_date, bio) VALUES ('Chris Pratt', 'MALE' , '1979-06-21', 'The guy with the raptors from that dinosaur movie');