SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle IN ('James Bond (2015)', 'Apocalypto (2006)')
AND tb1.titleType = 'movie'
AND tb1.averageRating >= 8
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 10