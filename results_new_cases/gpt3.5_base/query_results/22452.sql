SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear > 2008
AND tb.tconst NOT IN ('tt0099864', 'tt5463162', 'tt1825683', 'tt1396484')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5