SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle IN ('Natural Born Killers', 'Reefer Madness')
ORDER BY averageRating DESC
LIMIT 5