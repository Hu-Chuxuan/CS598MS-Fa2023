SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Sci-Fi%' 
AND tb.startYear = 2014
AND tb.tconst NOT IN ('tt1136608', 'tt0107419', 'tt1250777') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5