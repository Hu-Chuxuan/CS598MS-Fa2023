SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Crime%')
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt3890160', 'tt1462758', 'tt1675434')  -- Exclude movies already watched
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10