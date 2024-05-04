/* CREATE-запросы с учетом замечаний с прошлого дз и попыткой соблюсти нормальный стиль.
Создание основных таблиц */
create table if not exists genres (
	primary key (genre_id),
		genre_id SERIAL,
		genre_name varchar(30) unique not null
);

create table if not exists performers (
	primary key (performer_id),
		performer_id SERIAL,
		performer_name varchar(30) unique not null
);

create table if not exists albums (
	primary key (album_id),
		album_id SERIAL,
		album_name varchar(50) not null,
		release_year smallint not null,
			constraint acceptable_release_albums
			check (release_year between 2000 and 2024)
);

create table if not exists tracks (
	primary key (track_id),
		track_id SERIAL,
		track_name varchar(30) not null,
		track_length int not null,
		album_id int references albums(album_id),
			constraint acceptable_tracks_lengthes
			check (track_length > 15)
);

create table if not exists collections (
	primary key (collection_id),
		collection_id SERIAL ,
		collection_name varchar(30) not null,
		release_year smallint not null, 
			constraint acceptable_release_collections
			check (release_year between 2000 and 2024)
);

/* Создание отношений многие ко многим */

create table if not exists genres_performers (
	genre_id int references genres(genre_id),
	performer_id int references performers(performer_id)
);

create table if not exists albums_performers (
	album_id int references albums(album_id),
	performer_id int references performers(performer_id)
);

create table if not exists collections_tracks (
	collection_id int references collections(collection_id),
	track_id int references tracks(track_id)
);


