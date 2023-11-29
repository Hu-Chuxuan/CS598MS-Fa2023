SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres AS movie_genres
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Romance%' AND tb1.genres LIKE '%Comedy%'
AND (tb1.primaryTitle != 'The Devil Wears Prada (2006)' AND tb1.primaryTitle != 'Confessions of a Shopaholic (2009)' AND tb1.primaryTitle != '13 Going on 30 (2004)')
AND tb1.startYear > 2000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5