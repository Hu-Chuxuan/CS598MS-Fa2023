SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 2010
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Thriller%'
AND tb.tconst NOT IN ('tt2267998', 'tt1677720')  -- excluding Gone Girl and The Girl with the Dragon Tattoo
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5