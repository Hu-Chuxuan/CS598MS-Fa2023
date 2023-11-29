SELECT tb2.primaryTitle, tb2.startYear, tb2.genres, tr.averageRating
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
JOIN title_ratings AS tr ON tb2.tconst = tr.tconst
WHERE tb1.primaryTitle = 'The Shape of Water'
AND tb2.startYear = 2017
AND tb2.primaryTitle != 'The Shape of Water'
AND tb2.primaryTitle != 'The Shack'
ORDER BY tr.averageRating DESC
LIMIT 5