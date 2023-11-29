SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear = 2008
AND primaryTitle LIKE '%Rambo%'
AND primaryTitle NOT LIKE '%II%'
AND primaryTitle NOT LIKE '%III%'
AND primaryTitle NOT LIKE '%IV%'
AND primaryTitle NOT LIKE '%V%'
AND primaryTitle NOT LIKE '%VI%'
AND primaryTitle != 'Hot Fuzz'
AND primaryTitle != 'Super Troopers'
AND primaryTitle != '300'
AND primaryTitle != 'The Expendables'
AND primaryTitle != 'Crank'
ORDER BY averageRating DESC
LIMIT 5