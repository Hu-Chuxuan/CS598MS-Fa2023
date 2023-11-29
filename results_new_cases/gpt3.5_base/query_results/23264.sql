SELECT tb.primaryTitle AS Recommended_Movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'The Purge (2013)')
AND tb.primaryTitle NOT IN ('White Chicks (2004)', 'Deadpool (2016)', 'Fast & Furious (2009)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5