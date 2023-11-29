SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.startYear AS release_year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear > 2008
AND tb.primaryTitle != 'Pineapple Express'
AND tb.primaryTitle NOT IN ('It (1990)', 'Deadpool 2 (2018)', 'Black Panther (2018)', 'It (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5