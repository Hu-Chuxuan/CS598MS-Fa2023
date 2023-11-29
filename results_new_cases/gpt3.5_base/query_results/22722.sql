SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%War%' 
AND (tb.primaryTitle = 'Dunkirk' OR tb.primaryTitle = 'Darkest Hour' OR tb.primaryTitle = 'Atonement')
AND tb.primaryTitle NOT IN ('Lars and the Real Girl', 'Meet the Fockers', 'What About Bob%3F', 'The Best Exotic Marigold Hotel', 'The Grand Budapest Hotel')
ORDER BY tr.averageRating DESC
LIMIT 10