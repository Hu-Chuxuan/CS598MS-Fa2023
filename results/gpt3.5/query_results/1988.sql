SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND (tb.isAdult = 0 OR tb.genres LIKE '%Family%')
AND tb.startYear >= 1990
AND tb.tconst NOT IN ('tt0112462', 'tt0109830', 'tt1772341', 'tt0107615')
ORDER BY tr.averageRating DESC
LIMIT 10