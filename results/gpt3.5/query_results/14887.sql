SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Action%' 
AND title_basics.genres LIKE '%Adventure%'
AND title_basics.genres LIKE '%Sci-Fi%'
AND title_basics.startYear > 2010
AND title_basics.tconst NOT IN (SELECT knownForTitles FROM name_basics WHERE primaryName = 'Black Panther (2018)')
ORDER BY averageRating DESC
LIMIT 1