SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 1984
AND tb.startYear < 2023
AND tb.tconst NOT IN 
    (SELECT DISTINCT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'James Cameron')
ORDER BY tr.averageRating DESC
LIMIT 10