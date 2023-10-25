SELECT * FROM
(select distinct movie.* from title_basics as mb inner join
	title_rating as tr left outer join
	name_basic as nm right outer join
	title_crew as tc left outer join
	title_principal as tp left outer join
	director.movies as dm where
	mb.primaryTitle = nm.primaryName AND
	nm.job LIKE 'Actor%' OR
	nm.job LIKE 'Actress%') as movi WHERE year >= 2016