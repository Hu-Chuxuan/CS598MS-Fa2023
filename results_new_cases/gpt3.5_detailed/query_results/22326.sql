SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.titleType = 'movie'
AND (tb.primaryTitle LIKE '%Fast 8%' OR tb.primaryTitle LIKE '%The Terminator%')
AND tb.primaryTitle NOT IN ('Making a Murderer', 'The Godfather (1972)')
ORDER BY tr.averageRating DESC
LIMIT 5