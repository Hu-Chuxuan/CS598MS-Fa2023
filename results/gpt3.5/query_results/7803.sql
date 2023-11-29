SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2017
AND tb.genres LIKE '%Comedy%'
AND (nb.primaryName = 'Anna Kendrick' OR nb.primaryName = 'Rebel Wilson')
AND tb.primaryTitle != 'Pitch Perfect 3'
GROUP BY tb.primaryTitle, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5