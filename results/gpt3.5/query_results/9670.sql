SELECT tb.primaryTitle AS recommended_movie,
       tb.startYear AS release_year,
       tb.genres AS genre,
       tr.averageRating AS average_rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.startYear > 2013
AND tb.primaryTitle NOT IN ('Notebook  (2006)', 'The Notebook (2013)', 'Twilight  (2008)', 'Beauty and the Beast  (2017)')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5