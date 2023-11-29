SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%' 
AND tb.primaryTitle NOT IN ('A Good Day to Die Hard (2013)', 'Die Hard with a Vengeance (1995)', 'Die Hard (1988)', 'Deadpool 2  (2018)', 'Black Panther (2018)', 'The Avengers  (2012)', 'Avengers: Infinity War (2018)', 'Live Free or Die Hard (2007)', 'Deadpool  (2016)') 
ORDER BY tr.averageRating DESC 
LIMIT 5