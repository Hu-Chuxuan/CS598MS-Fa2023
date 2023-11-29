SELECT tb.primaryTitle AS Recommended_Movie, tb.startYear AS Release_Year, tr.averageRating AS Average_Rating, tr.numVotes AS Num_Votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Sci-Fi%'
AND tb.primaryTitle NOT IN ('Spider-Man (2002)', 'Iron Man 2 (2010)', 'Iron Man (2008)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5