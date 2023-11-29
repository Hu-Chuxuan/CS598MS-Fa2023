SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres NOT LIKE '%Action%' 
AND tb.genres NOT LIKE '%Adventure%'
AND tb.genres NOT LIKE '%Fantasy%'
AND tb.genres NOT LIKE '%Sci-Fi%'
AND tb.primaryTitle NOT IN ('The Cabin in the Woods', 'It  (2017)')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5