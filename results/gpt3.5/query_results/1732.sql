SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.startYear >= 2015
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND (nb.primaryName = 'Jennifer Aniston' OR tb.genres LIKE '%Comedy%')
AND tb.primaryTitle NOT IN ('Office Christmas Party (2016)', 'Ant-Man  (2015)', 'Deadpool  (2016)')
GROUP BY recommended_movie
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5