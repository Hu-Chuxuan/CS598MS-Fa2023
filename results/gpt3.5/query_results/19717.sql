SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2010
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('Blade  (1998)', 'Guardians of the Galaxy  (2014)', 'Thor: Ragnarok (2017)', 'Suicide Squad  (2016)', 'Black Panther (2018)', 'Blade II (2002)')
ORDER BY averageRating DESC
LIMIT 5