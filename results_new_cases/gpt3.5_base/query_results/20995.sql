SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Family%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Peter Rabbit (2018)', 'Finding Nemo (2003)', 'Finding Dory (2016)')
ORDER BY tr.numVotes DESC
LIMIT 5