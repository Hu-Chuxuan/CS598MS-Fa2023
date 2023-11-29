SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Superhero%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt4154756', 'tt5463162')  -- Excluding input movies
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5