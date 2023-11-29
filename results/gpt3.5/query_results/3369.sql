SELECT tb.primaryTitle, tb.startYear, tb.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2010
AND tb.averageRating >= 7
AND tb.tconst NOT IN ('tt0803096') -- Exclude 'Warcraft (2016)'
ORDER BY tb.averageRating DESC
LIMIT 5