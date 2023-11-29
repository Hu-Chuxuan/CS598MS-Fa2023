SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Get Out (2017)', 'Click  (2010)')
ORDER BY tr.averageRating DESC
LIMIT 5