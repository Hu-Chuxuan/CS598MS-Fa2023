SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Suspense%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0243585', 'tt0120669', 'tt1119646', 'tt0480255') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10