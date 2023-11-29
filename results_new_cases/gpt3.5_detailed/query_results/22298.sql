SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 2010 
AND tb.startYear <= 2015 
AND tb.tconst NOT IN ('tt0097656', 'tt0295088')  -- excluding Bridesmaids and Pitch Perfect
ORDER BY tr.averageRating DESC
LIMIT 5