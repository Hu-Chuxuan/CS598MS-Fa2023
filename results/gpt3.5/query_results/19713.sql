SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1999
AND tb.startYear >= 1995
AND tb.genres LIKE '%Animation%'
AND tb.tconst NOT IN ('tt0198781', 'tt0114709', 'tt0266543', 'tt1772341') -- removing User Preference History
ORDER BY tr.averageRating DESC
LIMIT 5