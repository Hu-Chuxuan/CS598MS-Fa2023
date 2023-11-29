SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.averageRating
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Biography%'
AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 1980
AND tb.averageRating >= 7
AND tb.tconst NOT IN ('tt0081505', 'tt0056801', 'tt0073540', 'tt0230600', 'tt0103874')
ORDER BY tb.averageRating DESC, tb.startYear DESC
LIMIT 10