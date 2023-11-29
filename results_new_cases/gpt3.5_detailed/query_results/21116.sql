SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.startYear = 2016 OR tb.startYear = 2017)
AND tb.genres LIKE '%Horror%'
OR tb.genres LIKE '%Thriller%'
AND tb.tconst NOT IN ('tt0443701', 'tt3402232')
ORDER BY tr.averageRating DESC