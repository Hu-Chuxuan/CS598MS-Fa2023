SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Failure to Launch (2006)', 'Sweet Home Alabama  (2002)', 'Maid in Manhattan')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5