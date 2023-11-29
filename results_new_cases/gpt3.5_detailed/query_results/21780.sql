SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.startYear > 2003
AND tb.startYear < 2018
AND tb.primaryTitle != 'Black Panther'
ORDER BY tr.averageRating DESC
LIMIT 5