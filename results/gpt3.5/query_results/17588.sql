SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%' 
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Mystery%'
AND tb.startYear > 2004
AND tb.startYear < 2022
AND tb.tconst NOT IN ('tt0082971', 'tt0317303', 'tt0102057', 'tt0368891')
ORDER BY tr.averageRating DESC
LIMIT 5