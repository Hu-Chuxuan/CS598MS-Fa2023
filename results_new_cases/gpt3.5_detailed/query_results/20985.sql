SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'documentary'
AND tb.genres LIKE '%Documentary%'
AND tb.primaryTitle NOT IN ('Making a Murderer', 'Super Size Me (2004)')
ORDER BY tr.averageRating DESC
LIMIT 5