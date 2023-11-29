SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.startYear <= 2014
AND (
    tb.primaryTitle = 'Guardians of the Galaxy' 
    OR tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
)
AND tb.tconst NOT IN ('tt2283362', 'tt0365478', 'tt0087843', 'tt0089218')
ORDER BY tr.averageRating DESC