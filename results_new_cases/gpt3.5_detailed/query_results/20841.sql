SELECT tb.primaryTitle AS Recommended_Comedy_Movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 1984
AND tb.primaryTitle NOT IN ('Beetlejuice', 'Ghostbusters')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5