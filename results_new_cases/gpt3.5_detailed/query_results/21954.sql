SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 1998
AND genres LIKE '%Romance%'
AND genres LIKE '%Comedy%'
AND tconst IN (SELECT knownForTitles
               FROM name_basics
               WHERE primaryName = 'Shakespeare in Love')
AND primaryTitle NOT IN ('Grease', 'Mamma Mia!')
ORDER BY averageRating DESC
LIMIT 5