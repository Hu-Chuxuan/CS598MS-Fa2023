SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2001
AND genres LIKE '%Drama%'
AND originalTitle != 'Amélie'
AND originalTitle != 'Dirty Dancing: Havana Nights'
AND originalTitle != 'American Beauty'
AND originalTitle != 'Gnomeo & Juliet'
AND originalTitle != 'Dirty Dancing'
AND originalLanguage = 'English'
ORDER BY averageRating DESC
LIMIT 1