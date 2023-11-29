SELECT tb.primaryTitle AS Recommended_Movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2005
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt0407304', 'tt0181689', 'tt0083658', 'tt0234215', 'tt0046534')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1