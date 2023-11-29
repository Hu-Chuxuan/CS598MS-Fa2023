SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND (tb.primaryTitle = 'It (2017)' OR tb.primaryTitle = 'Mama (2013)')
AND tb.primaryTitle NOT IN ('X-Men (2000)')
ORDER BY tr.averageRating DESC
LIMIT 5