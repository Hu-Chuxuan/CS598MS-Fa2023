SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Horror%' 
AND tb.primaryTitle NOT IN ('The Martian (2015)', 'Super Troopers (2001)', 'Aliens (1986)', 'Deadpool (2016)', 'Super Troopers 2 (2018)') 
ORDER BY tr.averageRating DESC 
LIMIT 10