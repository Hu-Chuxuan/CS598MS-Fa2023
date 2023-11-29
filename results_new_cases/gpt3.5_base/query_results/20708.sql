SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Deadpool (2016)')
ORDER BY tr.averageRating DESC
LIMIT 10