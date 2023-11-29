SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%'
AND tb.startYear <= 2021
AND tb.primaryTitle NOT IN ('The Lion King (1994)', 'The Jungle Book  (2016)', 'Jungle Book  (2018)', 'Shrek (2001)')
ORDER BY tr.averageRating DESC
LIMIT 5