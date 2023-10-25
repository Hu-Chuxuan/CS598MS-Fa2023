SELECT * FROM
(select titles.*,(case when rating > 1 then 1 else 0 end) as "IsRecommended",count(*) over() as total from ratings join title_ratings using (title_id)) AS recommended
where user_preferences in ('Black Panther (2018), Hot Fuzz (2007), Black Sheep  (1996), Jumanji  (2017)' )
group by title_name