
-- TUGAS 

-- Database yang di gunakan adalah Sakila (DVD Rental)
use sakila;
-- SOAL 

-- 1. 	Create table dengan nama `film_review` dengan kolom-kolom berikut: 
-- 		> review_id (auto-increment primary key) 
-- 		> film_title (varchar dengan batas 255 karakter)
-- 		> review_text (text)
-- 		> movie_text (varchar dengan batas 255 karakter)
-- Jawab:
CREATE TABLE film_review(
review_id int auto_increment,
film_title varchar(255),
review_text text,
movie_text varchar(255),
primary key (review_id)
);

-- 2. 	Drop kolom `movie_text`, lalu tambahkan kolom berikut pada table `film_review`: 
-- 		> film_year (integer)  
-- 		> rating (float)
-- Jawab:
alter table film_review 
	drop column movie_text;

alter table film_review 
	add column film_year int;

alter table film_review 
	add column rating float;

-- 3. 	Insert review film 'Inception' ke dalam table `film_review` dengan kriteria berikut:
-- 		> film_year: 2010
-- 		> review_text: 'Inception is a movie that will keep you mesmerized and captivated.'
-- 		> rating: 8.8
-- Jawab:
alter table film_review 
modify film_year varchar(4);

insert into film_review (
			film_title ,review_text,
			film_year,rating)
	values (
			'Indeption', 
			'Inception is a movie that will keep you mesmerized and captivated.', 
			 '2010', 8.8
			);
		
update film_review 
set film_title = 'Inception'
where review_id = 1;

-- 4. 	Insert data baru ke dalam table `movie_review` dengan kriteria berikut:
-- 		+================================================================================================+
-- 		|  film_title | film_year | rating |					review_text								 |
-- 		+================================================================================================+
-- 		| 'Logan' 	  |   2017    |  8.1   | 'Logan really has stakes that feel real.' 					 |
-- 		| 'Ant-Man'	  |   2015    |  7.3   | 'Ant-Man is a superhero film worth seeing.'				 |
-- 		| 'The Flash' |   2023    |  6.9   | 'Enjoyable film with some really good performances.'		 |
-- 		| 'Aquaman'	  |   2018    |  6.8   | 'Aquaman is an incredibly fun and entertaining action film.'|
-- Jawab:
insert into film_review (
			film_title ,review_text,
			film_year,rating)
	values 	('Logan','Logan really has stakes that feel real.','2017', 8.1),
			('Ant-Man','Ant-Man is a superhero film worth seeing.','2015', 7.3),
			('The Flash','Enjoyable film with some really good performances.','2023', 6.9),
			('Aquaman','Aquaman is an incredibly fun and entertaining action film.','2018', 6.8);

alter table film_review 
modify review_text text after rating; 

-- 5. 	Update semua film pada table `film` dengan rating 'PG' untuk memiliki `rental_rate` sebesar $1.99.
-- Jawab:
update film 
set rental_rate = '1.99'
	where rating = 'PG';




