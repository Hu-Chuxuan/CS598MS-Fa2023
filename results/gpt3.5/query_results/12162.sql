SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres NOT LIKE '%Sport%'
AND primaryTitle <> 'The Wrestler'
AND (primaryTitle = 'Starship Troopers' AND startYear = 1997)
AND (primaryTitle NOT IN ('Spaceballs', 'Stardust') AND startYear NOT IN (1987, 2007))
ORDER BY averageRating DESC
LIMIT 5