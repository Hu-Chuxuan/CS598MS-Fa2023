SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('Winchester (2018)', 'The Exorcist  (1973)', 'It Follows (2014)', 'Friday the 13th  (1980)')
ORDER BY tr.averageRating DESC
LIMIT 10