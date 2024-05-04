/* задание 4(доп), select-запросы */

with multigenre_performers as ( --1
	select p.performer_id, p.performer_name, count(*) as quantity_genres 
		from performers as p 
		inner join genres_performers as gp 
			on gp.performer_id = p.performer_id
		group by p.performer_id, p.performer_name
	)
	select a.album_name
		from albums as a
		inner join albums_performers as ap
			on ap.album_id = a.album_id 
		
		inner join multigenre_performers as mp
			on ap.performer_id = mp.performer_id
	where quantity_genres > 1;
	
select track_name --2
	from tracks as t
	left join collections_tracks as ct
		on ct.track_id = t.track_id 
	where ct.collection_id IS null;

select p.performer_name, t.track_name, t.track_length --3
	from performers as p
	inner join albums_performers as ap
		on ap.performer_id = p.performer_id 
		
	inner join albums as a
		on ap.album_id = a.album_id 
		
	inner join tracks as t 
		on t.album_id = a.album_id 
	where t.track_length = (select min(track_length) from tracks);

with albums_with_size as ( --4
	select a.album_name, count(*) as quantity_tracks
		from albums as a
		inner join tracks as t
			on a.album_id = t.album_id 
		group by album_name
	)
	select a2.album_name
		from albums as a2
		inner join albums_with_size as aws
			on aws.album_name = a2.album_name 
		where quantity_tracks = (select min(quantity_tracks) from albums_with_size);


