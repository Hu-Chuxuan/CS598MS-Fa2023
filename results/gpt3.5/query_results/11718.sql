SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres IN (
    SELECT genres
    FROM title_basics
    WHERE primaryTitle IN ('The Breakfast Club', 'The Notebook', 'Pixels', 'Land of the Lost', 'Safe Haven')
)
AND primaryTitle NOT IN ('The Breakfast Club', 'The Notebook', 'Pixels', 'Land of the Lost', 'Safe Haven')
ORDER BY averageRating DESC
LIMIT 5