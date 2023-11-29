SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt5580390', 'tt0167404')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10