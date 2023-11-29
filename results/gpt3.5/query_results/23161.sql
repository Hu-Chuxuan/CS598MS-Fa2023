SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2010
AND tb1.genres LIKE '%Thriller%'
AND tb1.tconst NOT IN (
    SELECT DISTINCT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'Panic Room' 
    OR nb.primaryName = 'The Purge'
)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5