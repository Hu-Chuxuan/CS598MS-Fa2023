SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 1990
AND genres LIKE '%Thriller%'
AND startYear <= 1997
AND primaryTitle != 'Kiss the Girls'
AND primaryTitle NOT IN ('Bio-Dome (1996)', "Can't Hardly Wait", "My Best Friend's Wedding (1997)", 'Happy Gilmore (1996)')
ORDER BY averageRating DESC
LIMIT 5