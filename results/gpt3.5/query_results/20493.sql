SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle = 'Woodlawn' AND startYear = 2015
UNION
SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle = 'To Kill a Mockingbird' AND startYear = 1962
UNION
SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle IN ('I Can Only Imagine', 'We Are Marshall', 'The Judge')
ORDER BY averageRating DESC
LIMIT 5