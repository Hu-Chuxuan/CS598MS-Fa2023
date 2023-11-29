SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Family%'
AND tb.genres NOT LIKE '%Adult%'
AND tr.averageRating >= 6
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Air Bud (1997)', "Charlotte's Web  (2006)")
ORDER BY tr.averageRating DESC
LIMIT 5