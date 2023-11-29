SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt5052448', 'tt2281159', 'tt3850590')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5