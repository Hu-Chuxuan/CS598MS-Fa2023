SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Horror%'
AND tr.numVotes > 1000
AND nb.primaryName NOT IN ('M. Night Shyamalan', 'Hideo Nakata', 'Stiles White')
GROUP BY tb.primaryTitle, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5