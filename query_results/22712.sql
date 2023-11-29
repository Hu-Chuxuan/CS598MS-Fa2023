SELECT * FROM ( SELECT 
    r.*,
	row_number() over () AS RN,
	max((rating_value + avg(user_rating))*0.8)/(avg(rating)+sum(user_votes)),
	count(*) OVER (PARTITION BY title_id ORDER BY RN DESC),
   min(startyear), max(endyear), min(runtime),
   sum(genre)
FROM (SELECT tb.title_id, tb.title_type, tb.primary_title,tb.original_title,
tb.is_adult, tb.start_year, tb.end_year, tb.runtime_minute, tb.genre from title_basic as tb inner join name_basics as n using (title_id) left outer join title_crew as tc using (title_id) right outer join title_principal as p using (title_id) group by tb.title_id ) as r INNER JOIN title_rating as tr USING (title_id)