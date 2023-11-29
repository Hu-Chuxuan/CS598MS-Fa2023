SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2010
AND isAdult = 0
AND genres LIKE '%Family%'
AND genres LIKE '%Animation%'
AND averageRating >= 7
AND primaryTitle NOT IN ('Angels & Demons  (2009)', 'National Treasure  (2004)')
ORDER BY averageRating DESC
LIMIT 1