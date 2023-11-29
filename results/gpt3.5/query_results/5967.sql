SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear > 2000
AND tb.startYear < 2010
AND tr.averageRating > 7
AND (tb.primaryTitle NOT LIKE '%Hidden Figures%' 
     AND tb.primaryTitle NOT LIKE '%Legends of the Fall%' 
     AND tb.primaryTitle NOT LIKE '%The Boy in the Striped Pyjamas%')
ORDER BY tr.averageRating DESC
LIMIT 5