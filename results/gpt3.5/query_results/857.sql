SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear > 1990
AND tb.primaryTitle NOT IN ('Knocked Up', 'This Is 40', 'Wedding Crashers', 'Rushmore')
ORDER BY tr.averageRating DESC
LIMIT 5