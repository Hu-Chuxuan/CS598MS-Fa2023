SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear <= 2022
AND tb.tconst NOT IN ('tt0133093', 'tt0945513', 'tt0390384')
ORDER BY tr.averageRating DESC
LIMIT 5