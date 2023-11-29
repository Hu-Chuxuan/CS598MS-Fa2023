SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName LIKE '%Hugh Grant%'
AND tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tr.numVotes >= 1000
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Romance%'
ORDER BY tr.averageRating DESC
LIMIT 5