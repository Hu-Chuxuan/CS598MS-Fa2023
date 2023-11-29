SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
JOIN title_ratings AS tr2 ON tb2.tconst = tr2.tconst
WHERE tb1.startYear = 1982
AND tb1.primaryTitle != 'Blade Runner'
AND tb2.primaryTitle IN ('My Big Fat Greek Wedding', 'Lars and the Real Girl')
AND tr1.averageRating > 7.5
AND tr2.averageRating > 7.5
GROUP BY tb1.primaryTitle
ORDER BY tr1.averageRating DESC
LIMIT 5