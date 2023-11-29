SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt5052448', 'tt1987680')  -- excluding 'Fight Club' and 'Pitch Perfect'
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5