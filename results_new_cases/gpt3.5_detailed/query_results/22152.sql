SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear > 1980
AND tb.startYear < 1990
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0098384', 'tt0332379', 'tt0126886')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5