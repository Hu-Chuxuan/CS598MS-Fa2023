SELECT tb.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Michael Clayton  (2007)', 'Star Trek  (2009)')
ORDER BY tr.averageRating DESC
LIMIT 5