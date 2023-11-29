SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%'
AND (tb.startYear <= 1980 OR tb.startYear >= 2017)
AND tb.tconst NOT IN ('tt0081505', 'tt0077651', 'tt5052448')
ORDER BY tr.averageRating DESC
LIMIT 5