SELECT tb.primaryTitle AS recommended_movie, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%scary%' OR tb.genres LIKE '%romantic%')
AND tb.primaryTitle NOT IN ('Coco  (2017)', 'Click  (2010)')
ORDER BY tr.averageRating DESC
LIMIT 5