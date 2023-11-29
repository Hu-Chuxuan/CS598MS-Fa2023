SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.tconst = nb.knownForTitles
WHERE tb.titleType = 'movie'
AND nb.primaryName = 'Adam Sandler'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Jurassic Park', 'Jaws', 'Jurassic Park  (1993)')
ORDER BY tr.averageRating DESC
LIMIT 5