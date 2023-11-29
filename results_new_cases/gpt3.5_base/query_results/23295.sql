SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'James DeMonaco'
AND tb.titleType = 'movie'
AND tr.averageRating >= 7
AND (tb.startYear BETWEEN 2010 AND 2020)
AND tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'The Purge (2013)')
AND tb.primaryTitle NOT IN ('Fight Club (1999)', 'Pitch Perfect (2012)')
GROUP BY tb.primaryTitle
ORDER BY tr.numVotes DESC
LIMIT 5