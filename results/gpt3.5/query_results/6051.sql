SELECT tb1.primaryTitle AS RecommendedMovie
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_crew AS tc1 ON tb1.tconst = tc1.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN title_basics AS tb2 ON tc1.directors = tb2.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tb1.genres LIKE '%Romance%'
AND tr1.averageRating > 6.5
AND tb2.primaryTitle = 'Sweet Home Alabama'
AND tb2.startYear = 2002
AND tb2.genres LIKE '%Romance%'
AND NOT EXISTS (
    SELECT *
    FROM title_principals AS tp2
    JOIN name_basics AS nb1 ON tp2.nconst = nb1.nconst
    WHERE tp2.tconst = tb1.tconst
    AND nb1.primaryName LIKE '%Reese Witherspoon%'
)
AND tb1.primaryTitle != 'Just Like Heaven'
ORDER BY tr1.averageRating DESC, tr1.numVotes DESC
LIMIT 1