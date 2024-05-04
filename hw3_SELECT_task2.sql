/* задание 2, select-запросы */

select track_name, track_length --1
	from tracks
	where track_length = (select max(track_length) from tracks);

select track_name, track_length --2
	from tracks
	where track_length > 210
	order by track_length DESC;

select collection_name, release_year --3
	from collections
	where release_year between 2018 and 2020;

select performer_name --4
	from performers
	where performer_name not like ('% %');

select track_name --5
	from tracks
	where lower(track_name) like ('%my%') or lower(track_name) like ('%мой%');


