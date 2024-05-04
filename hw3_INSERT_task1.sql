/* задание 1, insert-запросы */
insert into genres(genre_name) 
VALUES ('Рэп'), ('Рок'), ('Поп');
	
insert into performers(performer_name) 
VALUES ('Эндшпиль'), ('PHARAOH'), ('NickelBack'), ('The Weeknd');
	
insert into albums(album_name, release_year) 
VALUES ('Dawn FM', 2022), ('Old Days', 2023), ('PHUNERAL', 2018), ('Feed the Machine', 2017);
	
insert into tracks(track_name, track_length, album_id) 
VALUES ('Мой кайф', 161, 3), ('Смарт', 147, 3), ('My Babylon', 233, 2), ('Джанго', 222, 2),
	   ('Feed the Machine', 302, 4), ('Song On Fire', 230, 4), ('Take My Breath', 339, 1), ('Dawn FM', 96, 1);

insert into collections (collection_name, release_year) 
VALUES ('MyColl', 2020), ('RapRapRap', 2018), ('Тут много', 2024), ('Тут мало', 2017);
	
insert into genres_performers (genre_id, performer_id) 
VALUES (1, 1), (1, 2), (2, 3), (3, 4), (3, 2);

insert into albums_performers (album_id, performer_id) 
VALUES (1, 4), (2, 1), (3, 2), (4, 3);

insert into collections_tracks (collection_id, track_id) 
VALUES (1, 1), (1, 3), (1, 2), (2, 1), (2, 2), (2, 3), (2, 4), (3, 1), (3, 2), (3, 3), (3, 4), (3, 5),
	   (3, 6), (3, 7), (3, 8), (4, 5), (4, 6);

/* дополнительные вставки для работы с задачами */

insert into albums (album_name, release_year) 
VALUES ('Правило', 2020);

insert into tracks (track_name, track_length, album_id) 
VALUES ('Ночь пятницы', 194, 5), ('Без ключа', 159, 5);

insert into albums_performers (album_id, performer_id) 
VALUES (5, 2);

insert into albums (album_name, release_year) 
VALUES ('After Hours', 2020);

insert into albums_performers (album_id, performer_id) 
VALUES (6, 4);

insert into albums (album_name, release_year) 
values ('The Highlights', 2021), ('No Fixed Address', 2014);

insert into tracks (track_name, track_length, album_id)
values ('Too Late', 250, 6), ('In Your Eyes', 237, 7), ('Million Miles An Hour', 250, 8);

insert into albums_performers (album_id, performer_id)
values (7, 4), (8, 3);

