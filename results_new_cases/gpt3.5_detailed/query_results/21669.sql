SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.tconst IN (
    SELECT DISTINCT tp.tconst
    FROM title_principals tp
    JOIN title_basics tb2 ON tp.tconst = tb2.tconst
    WHERE tp.nconst IN (
        SELECT nconst
        FROM title_principals
        WHERE tconst = (SELECT tconst FROM title_basics WHERE primaryTitle = 'Ant-Man' AND startYear = 2015)
        AND category = 'director'
    )
    AND tb2.titleType = 'movie'
    AND tb2.startYear <= 2015
)
AND tb1.tconst <> (SELECT tconst FROM title_basics WHERE primaryTitle = 'Ant-Man' AND startYear = 2015)
ORDER BY tr.averageRating DESC
LIMIT 5