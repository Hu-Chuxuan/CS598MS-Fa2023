SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Found Footage%'
AND title_basics.startYear > 2016
AND title_basics.tconst NOT IN ('tt2481498', 'tt0134106', 'tt0328984', 'tt0097958')
ORDER BY averageRating DESC
LIMIT 5