SELECT t.title_basics, t.title_ratings, t.genres, n.name_basics
FROM title_basics t
JOIN name_basics n ON t.directors = n.nconst
WHERE t.genres LIKE '%Comedy%AND%Romance%'
AND t.title_ratings.averageRating > (
    SELECT AVG(t2.averageRating)
    FROM title_ratings t2
    WHERE t2.title_basics.titleType ='movie'
    AND t2.genres LIKE '%Comedy%AND%Romance%'
)
AND t.title_ratings.numVotes > 100
ORDER BY t.title_ratings.averageRating DESC