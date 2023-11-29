SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' 
AND tb.tconst <> 'tt3402236' 
ORDER BY tr.averageRating DESC
LIMIT 5