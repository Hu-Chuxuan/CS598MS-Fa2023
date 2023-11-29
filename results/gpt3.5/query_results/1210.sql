SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres NOT LIKE '%Action%'
AND title_basics.genres NOT LIKE '%Adventure%'
AND title_basics.genres NOT LIKE '%Sci-Fi%'
AND title_basics.genres NOT LIKE '%Fantasy%'
AND title_basics.genres NOT LIKE '%Thriller%'
AND title_basics.genres NOT LIKE '%War%'
AND title_basics.genres NOT LIKE '%Crime%'
AND title_basics.genres NOT LIKE '%Mystery%'
AND title_basics.genres NOT LIKE '%Horror%'
AND title_basics.genres NOT LIKE '%Musical%'
AND title_basics.genres NOT LIKE '%Music%'
AND title_basics.genres NOT LIKE '%Sport%'
AND title_basics.genres NOT LIKE '%Western%'
AND title_basics.genres NOT LIKE '%Animation%'
AND title_basics.genres NOT LIKE '%Comedy%'
AND title_basics.genres NOT LIKE '%Family%'
AND title_basics.genres NOT LIKE '%Romance%'
AND title_basics.genres NOT LIKE '%History%'
AND title_basics.genres NOT LIKE '%Biography%'
AND title_basics.genres NOT LIKE '%Documentary%'
AND title_basics.genres NOT LIKE '%News%'
AND title_basics.genres NOT LIKE '%Talk-Show%'
AND title_basics.genres NOT LIKE '%Reality-TV%'
AND title_basics.genres NOT LIKE '%Game-Show%'
AND title_basics.genres NOT LIKE '%Film-Noir%'
AND title_basics.startYear >= 2000
AND title_basics.averageRating >= 7.5
AND title_basics.tconst NOT IN ('tt0190332', 'tt0314111')
AND title_basics.tconst NOT IN ('tt0298845', 'tt0319453')
ORDER BY title_ratings.averageRating DESC
LIMIT 5