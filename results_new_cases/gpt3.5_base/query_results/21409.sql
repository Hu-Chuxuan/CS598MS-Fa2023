SELECT tb.primaryTitle AS Recommended_Movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2005
AND (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Romance%')
AND tb.primaryTitle NOT IN ('Sex and Lucia', 'The Pianist', 'The Shawshank Redemption')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5