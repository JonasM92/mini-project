-- Hint: Better not to add database schema as prefix (schema.table) because this does not port well to other machines that use a different schema name.
INSERT INTO user (email, password, user_name) values ('admin@mdb.be','superSecret','admin');
INSERT INTO user (email, password, user_name) values ('jonas.meuleman@gmail.com','42','jonas');

INSERT INTO genre (genre) VALUES ('Action'),('Animation'),('Biography'),('Comedy'),('Documentary'),('Drama'),('Family'),('Fantasy'),('Film-Noir'),('Horror'),('Musical'),('Science-Fiction'),('Thriller'),('Western');

INSERT INTO director (director_name, g, birth_date) VALUES ('Colin Trevorrow', 'MALE', '1976-09-13');
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster, director_id) VALUES (127, 7, 'Something with dinosaurs', 'Jurassic World', 'https://www.youtube.com/watch?v=RFinNxS5KN4', 8, 'http://ia.media-imdb.com/images/M/MV5BMTQ5MTE0MTk3Nl5BMl5BanBnXkFtZTgwMjczMzk2NTE@._V1_SX214_AL_.jpg', LAST_INSERT_ID());
INSERT INTO director (director_name, g, birth_date) VALUES ('James Wan', 'MALE', '1977-02-26');
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster, director_id) VALUES (180, 4, 'Something with cars', 'Furious Seven', 'https://www.youtube.com/watch?v=Skpu5HaVkOc' , 1, 'http://ia.media-imdb.com/images/M/MV5BMTQxOTA2NDUzOV5BMl5BanBnXkFtZTgwNzY2MTMxMzE@._V1_SX214_AL_.jpg', LAST_INSERT_ID());
INSERT INTO director (director_name, g, birth_date) VALUES ('Alan Taylor', 'MALE', '1965-01-01');
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster, director_id) VALUES (170, 6, 'Something with robots and time travel', 'Terminator:Genisys', 'https://www.youtube.com/watch?v=62E4FJTwSuc' , 12, 'http://ia.media-imdb.com/images/M/MV5BMjM1NTc0NzE4OF5BMl5BanBnXkFtZTgwNDkyNjQ1NTE@._V1_SX214_AL_.jpg', LAST_INSERT_ID());
INSERT INTO director (director_name, g, birth_date) VALUES ('Shane Black', 'MALE', '1961-12-16');
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster, director_id) VALUES (132, 8, 'Title says it all', 'Iron Man 3', 'https://www.youtube.com/watch?v=Ke1Y3P9D0Bc' , 1, 'http://ia.media-imdb.com/images/M/MV5BMjIzMzAzMjQyM15BMl5BanBnXkFtZTcwNzM2NjcyOQ@@._V1._SY317_.jpg', LAST_INSERT_ID());
INSERT INTO director (director_name, g, birth_date) VALUES ('Steven Moffat, Russell T. Davies,...', 'MALE', '1963-11-23');
INSERT INTO movie (length, rating, summary, title, trailer, genre_id, poster, director_id) VALUES (132, 8, 'Wibbly wobbly... time-y wimey... stuff. ', 'Doctor Who', 'https://www.youtube.com/watch?v=s-XqZmLhOCY' , 12, 'http://ia.media-imdb.com/images/M/MV5BMTI0NTY5MzQzNF5BMl5BanBnXkFtZTcwMTA3OTQ1MQ@@._V1_SY317_CR1,0,214,317_AL_.jpg', LAST_INSERT_ID());


INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Chris Pratt', 'MALE' , '1979-06-21', 'The guy with the raptors from that dinosaur movie', 'http://ia.media-imdb.com/images/M/MV5BNzg3MTgwOTgzMV5BMl5BanBnXkFtZTgwODIxMTUwMjE@._V1_UX214_CR0,0,214,317_AL_.jpg');
INSERT INTO movie_character(character_name, actor_id , movie_id) VALUES ('Owen Grady',LAST_INSERT_ID(),1);
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Robert Downey jr.', 'MALE' , '1965-04-05', 'Iron Man', 'http://ia.media-imdb.com/images/M/MV5BMTAwNjk2NTUyMzleQTJeQWpwZ15BbWU3MDQ2NzQzMTc@._V1_UY317_CR2,0,214,317_AL_.jpg');
INSERT INTO movie_character(character_name, actor_id , movie_id) VALUES ('Tony Stark',LAST_INSERT_ID(),4);
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Chloe Grace Moretz', 'FEMALE' , '1997-02-10', 'The girl from Kick-Ass', 'http://ia.media-imdb.com/images/M/MV5BMTk2ODk0Mzc0Ml5BMl5BanBnXkFtZTgwNDYzMzgzMzE@._V1_UY317_CR8,0,214,317_AL_.jpg');
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('David Tennant', 'MALE' , '1971-04-18', 'The tenth Doctor', 'http://ia.media-imdb.com/images/M/MV5BMTQxODM2MjUxNV5BMl5BanBnXkFtZTgwMjA4OTY0MTE@._V1_UY317_CR1,0,214,317_AL_.jpg');
INSERT INTO movie_character(character_name, actor_id , movie_id) VALUES ('The Oncoming Storm,  The Valeyard, The Beast,... or simply The Doctor',LAST_INSERT_ID(),5);
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Jenna-Louise Coleman', 'FEMALE' , '1986-04-27', 'One of the companions of The Doctor', 'http://ia.media-imdb.com/images/M/MV5BMTUwODM0NDg1MF5BMl5BanBnXkFtZTcwNTcwMTk2Mw@@._V1_UX214_CR0,0,214,317_AL_.jpg');
INSERT INTO movie_character(character_name, actor_id , movie_id) VALUES ('Clara Oswin Oswald, The Impossible Girl',LAST_INSERT_ID(),5);
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Alex Kingston', 'FEMALE' , '1963-03-11', 'Spoilers', 'http://ia.media-imdb.com/images/M/MV5BMTk3MTczNDIxOF5BMl5BanBnXkFtZTcwNDQ2MzI0Mg@@._V1_UY317_CR11,0,214,317_AL_.jpg');
INSERT INTO movie_character(character_name, actor_id , movie_id) VALUES ('Dr. River Song',LAST_INSERT_ID(),5);
INSERT INTO actor (actor_name, g, birth_date, bio, picture) VALUES ('Karen Gilan', 'FEMALE' , '1987-11-28', 'That girl from some Doctor Who episodes', 'http://ia.media-imdb.com/images/M/MV5BMTQwMDQ0NDk1OV5BMl5BanBnXkFtZTcwNDcxOTExNg@@._V1_UY317_CR2,0,214,317_AL_.jpg');
INSERT INTO movie_character(character_name, actor_id , movie_id) VALUES ('Amelia Amy Pond, The Girl Who Waited' , LAST_INSERT_ID() , 5);

INSERT INTO quote(quote) VALUES ('“The universe is big. It’s vast and complicated and ridiculous. And sometimes, very rarely, impossible things just happen and we call them miracles.”'),
  ('“You want weapons? We’re in a library! Books! The best weapons in the world!”'),
  ('“Amy Pond, there’s something you’d better understand about me ‘cause it’s important, and one day your life may depend on it: I am definitely a mad man with a box!” '),
  ('“When you’re a kid, they tell you it’s all… Grow up, get a job, get married, get a house, have a kid, and that’s it. But the truth is, the world is so much stranger than that. It’s so much darker. And so much madder. And so much better.”'),
  ('“The way I see it, every life is a pile of good things and bad things. The good things don’t always soften the bad things, but vice versa, the bad things don’t always spoil the good things and make them unimportant.” '),
  ('“Some people live more in 20 years than others do in 80. It’s not the time that matters, it’s the person.”'),
  ('“Do what I do. Hold tight and pretend it’s a plan!” '),
  ('“In 900 years of time and space, I’ve never met anyone who wasn’t important”'),
  ('“900 years of time and space, and I’ve never been slapped by someone’s mother.” '),
  ('“Never ignore coincidence. Unless, of course, you’re busy. In which case, always ignore coincidence.”'),
  ('“There’s a lot of things you need to get across this universe. Warp drive… wormhole refractors… You know the thing you need most of all? You need a hand to hold.”'),
  ('“This is who I am, right here, right now, all right? All that counts is here and now, and this is me!” '),
  ('“I am and always will be the optimist. The hoper of far-flung hopes and the dreamer of improbable dreams.”'),
  ('“Everybody knows that everybody dies. But not every day. Not today. Some days are special. Some days are so, so blessed. Some days, nobody dies at all. Now and then, every once in a very long while, every day in a million days, when the wind stands fair and the Doctor comes to call, everybody lives.” '),
  ('“We’re all stories, in the end. Just make it a good one, eh?”'),
  ('“Letting it get to you. You know what that’s called? Being alive. Best thing there is. Being alive right now is all that counts.” '),
  ('“Always take a banana to a party, Rose: bananas are good!”'),
  ('“You don’t just give up. You don’t just let things happen. You make a stand! You say no! You have the guts to do what’s right, even when everyone else just runs away.”'),
  ('“This is one corner… of one country, in one continent, on one planet that’s a corner of a galaxy that’s a corner of a universe that is forever growing and shrinking and creating and destroying and never remaining the same for a single millisecond. And there is so much, so much to see.”'),
  ('“Rose, before I go, I just want to tell you: you were fantastic. Absolutely fantastic. And you know what? So was I.” ')
