/* задание 3, select-запросы */

select genre_name, count(*) as quantity --1
	from genres as g
		inner join genres_performers as gp 
		on gp.genre_id = g.genre_id 
		
		inner join performers as p 
		on gp.performer_id = p.performer_id
	group by g.genre_id
	order by g.genre_id;

select count(*) as quantity_tracks --2
	from tracks as t 
		inner join albums as a 
		on t.album_id = a.album_id
	where a.release_year between 2019 and 2020;

select album_name, round(avg(track_length), 2) as average_length --3
	from albums as a
		inner join tracks as t
		on t.album_id = a.album_id 
	group by a.album_id
	order by a.album_id;

with albums_2020 as (	--4
	select p.performer_name, a.album_name, release_year
		from performers as p
			inner join albums_performers as ap
			on ap.performer_id = p.performer_id
			
			inner join albums as a
			on ap.album_id = a.album_id
		where release_year = 2020
		)
	select p2.performer_name
		from performers as p2
		where p2.performer_name not in (select a2.performer_name from albums_2020 as a2);
	
select c.collection_name --5
	from performers as p
		inner join albums_performers as ap
		on ap.performer_id = p.performer_id
		
		inner join albums as a
		on ap.album_id = a.album_id 
		
		inner join tracks as t 
		on t.album_id = a.album_id 
		
		inner join collections_tracks  as ct
		on ct.track_id = t.track_id 
		
		inner join collections as c
		on ct.collection_id = c.collection_id 
	where p.performer_name like ('PHARAOH')
	group by c.collection_name;
	
	
	
	

	


   
	
	
	
	
	