SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.tconst IN 
    (SELECT distinct(tp.tconst)
    FROM title_principals tp
    JOIN title_basics tb2 ON tp.tconst = tb2.tconst
    WHERE tp.nconst IN 
        (SELECT nconst 
        FROM title_principals 
        WHERE tconst = 
            (SELECT tconst 
            FROM title_basics 
            WHERE primaryTitle = 'The Hunt for Red October' AND startYear = 1990))
    AND tp.category = 'director'
    AND tp.tconst <> 
        (SELECT tconst 
        FROM title_basics 
        WHERE primaryTitle = 'The Hunt for Red October' AND startYear = 1990)
    AND tb2.titleType = 'movie')
AND tb1.titleType = 'movie'
AND tb1.startYear <= 1990 + 5
AND tb1.startYear >= 1990 - 5
AND tb1.tconst NOT IN 
    (SELECT tconst 
    FROM title_basics 
    WHERE primaryTitle IN ('Horrible Bosses 2', 'Game Night', 'Horrible Bosses'))
ORDER BY tr.averageRating DESC
LIMIT 5