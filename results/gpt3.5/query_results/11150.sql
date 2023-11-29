SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Action%'
AND nb.primaryName = 'George Clooney'
AND tb.primaryTitle != 'From Dusk till Dawn (1996)'
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5