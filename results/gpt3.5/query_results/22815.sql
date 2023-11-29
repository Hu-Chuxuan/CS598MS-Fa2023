SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear >= 1950 
AND tb.genres LIKE '%Family%' 
AND tb.tconst NOT IN ('tt0050918', 'tt0089785', 'tt0072951') 
ORDER BY tr.averageRating DESC, tb.startYear ASC 
LIMIT 5