SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt5580390', 'tt0167404')
ORDER BY tr.averageRating DESC
LIMIT 5