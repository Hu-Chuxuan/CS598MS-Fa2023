SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%French%'
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('The Tao of Steve (2000)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10