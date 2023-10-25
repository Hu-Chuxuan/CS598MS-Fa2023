SELECT * FROM
(select tb.* from title_basic as tb inner join cast(name_basic as text) as c where c = tb.titleType order by rating desc limit 7)
as tb
inner join (
select distinct tc.* from cast(name_basic as text) as c inner join title_rating as tr
on c=tr.primaryName group by c having count(*) >= 2 ) as tc
where tb.isadult in ('no','yes') and tb.startyear between 1980 AND 2000