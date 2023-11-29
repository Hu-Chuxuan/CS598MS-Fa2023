SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Romance%'
AND tb1.startYear > 2000
AND tb1.primaryTitle != 'The Notebook'
AND tb1.primaryTitle != 'Titanic'
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 5