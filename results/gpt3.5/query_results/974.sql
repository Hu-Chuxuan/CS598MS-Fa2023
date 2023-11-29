SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tr.averageRating >= 7.5
AND nb.primaryName = 'Tom Hanks'
AND tb.primaryTitle NOT IN ('Cast Away (2000)', 'Ant-Man  (2015)', 'Say Anything... (1989)', 'Deadpool (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5