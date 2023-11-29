SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND (genres LIKE '%Comedy%' OR genres LIKE '%Romance%')
AND startYear >= 1990
AND startYear <= 2020
AND primaryTitle NOT IN ('Clueless  (1995)', 'Girls Trip (2017)', 'Freddy Got Fingered (2001)', 'Mike and Dave Need Wedding Dates (2016)')
ORDER BY averageRating DESC
LIMIT 5