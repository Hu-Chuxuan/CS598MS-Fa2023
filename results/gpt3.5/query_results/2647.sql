SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Mystery%'
AND (tb.primaryTitle LIKE '%Grisham%' OR tb.primaryTitle LIKE '%Renfro%')
AND tb.titleType = 'movie'
AND tb.startYear >= 1988
ORDER BY tr.averageRating DESC
LIMIT 10