SELECT * from title_basics where titleType = “movie” order by avgRating desc limit 10
union SELECT * from title_crew where tconst=“tt0000001” group by category having count(*)>1
order by avgRating asc limit 10
limit 10