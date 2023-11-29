SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' OR tb.genres LIKE '%Crime%'
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Memento', 'Clue', 'It')
ORDER BY tr.averageRating DESC
LIMIT 5