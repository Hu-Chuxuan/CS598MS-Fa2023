SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2000
AND tb.genres NOT LIKE '%old%'
AND tb.primaryTitle != 'Memento'
AND tb.primaryTitle != 'Sherlock Holmes'
ORDER BY tr.averageRating DESC
LIMIT 5