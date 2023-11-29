SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Sci-Fi%' 
AND tb.startYear >= 1970 
AND tb.startYear < 1990 
AND tb.tconst NOT IN ('tt0078748', 'tt0022913', 'tt0034492', 'tt0016847', 'tt0102798', 'tt0101414') 
ORDER BY tr.averageRating DESC
LIMIT 5