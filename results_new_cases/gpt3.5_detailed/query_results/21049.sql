SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%'
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Hangover (2010)', 'Yes  (2004)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10