SELECT tb1.primaryTitle AS recommendation_title, tb1.startYear AS recommendation_year, tb1.genres AS recommendation_genres, tr.averageRating AS recommendation_rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear = 2017
AND tb1.genres LIKE '%Adventure%'
AND tb1.tconst NOT IN (
    SELECT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'Robin Williams'
)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5