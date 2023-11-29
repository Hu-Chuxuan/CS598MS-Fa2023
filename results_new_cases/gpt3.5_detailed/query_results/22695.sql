SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%'
AND primaryTitle NOT IN ('A Good Day to Die Hard (2013)', 'Die Hard with a Vengeance (1995)', 'Die Hard (1988)', 'Deadpool 2  (2018)', 'Black Panther (2018)', 'The Avengers  (2012)', 'Avengers: Infinity War (2018)', 'Live Free or Die Hard (2007)', 'Deadpool  (2016)')
ORDER BY averageRating DESC
LIMIT 10