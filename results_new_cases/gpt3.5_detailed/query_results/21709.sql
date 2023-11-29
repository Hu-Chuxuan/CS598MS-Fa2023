SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%') 
AND tb.startYear >= 2018
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Hangover', 'Blades of Glory', 'Ghostbusters', 'Hot Fuzz', 'Shaun of the Dead')
ORDER BY tr.averageRating DESC
LIMIT 5