SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres NOT LIKE '%Family%'
AND tb.startYear > 2008
AND tr.averageRating > 6
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Miracles from Heaven', 'Bad Moms', 'Fireproof')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5