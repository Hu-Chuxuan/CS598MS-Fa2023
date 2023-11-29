SELECT tb.tconst, tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.tconst <> "tt0108052"  -- Exclude the movie "Schindler's List (1993)"
AND tb.titleType = 'movie'
AND tr.numVotes >= 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5