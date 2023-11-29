SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT tb.genres LIKE '%Action%'
AND NOT tb.genres LIKE '%War%'
AND NOT tb.genres LIKE '%Biography%'
AND NOT tb.genres LIKE '%History%'
AND NOT tb.genres LIKE '%Documentary%'
AND tb.genres NOT IN ('Short', 'News', 'Sport')
AND tb.startYear <= 2011
AND tb.primaryTitle != 'The Darkest Hour  (2011)'
ORDER BY tr.averageRating DESC
LIMIT 5