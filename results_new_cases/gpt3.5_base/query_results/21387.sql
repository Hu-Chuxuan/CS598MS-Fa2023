SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear BETWEEN 1990 AND 2000
AND tb.primaryTitle != 'The Silence of the Hams'
ORDER BY tr.averageRating DESC
LIMIT 5