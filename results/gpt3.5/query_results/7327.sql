SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT IN ('Mr. Deeds (2002)', 'How to Lose a Guy in 10 Days (2003)', '50 First Dates (2004)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5