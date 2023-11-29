SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Romance%')
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0119303', 'tt0212346')  -- excluding Bridesmaids and Pitch Perfect
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5