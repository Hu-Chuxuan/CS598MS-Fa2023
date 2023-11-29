SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Mel Gibson' AND title_basics.titleType = 'movie'
AND (startYear BETWEEN 1990 AND 2022)
AND (genres LIKE '%Action%' OR genres LIKE '%Drama%')
AND title_basics.tconst NOT IN ('tt0112573', 'tt0332452', 'tt0416449')
AND title_basics.tconst NOT IN ('tt0120667', 'tt0433383', 'tt0167261')
ORDER BY averageRating DESC
LIMIT 5