SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle != 'Uncle Buck'
AND tb.primaryTitle NOT IN ('The Avengers', 'X-Men', 'The Wolverine')
ORDER BY tr.averageRating DESC
LIMIT 10