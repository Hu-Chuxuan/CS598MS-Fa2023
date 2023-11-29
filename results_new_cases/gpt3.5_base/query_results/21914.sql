SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT IN ('Ace Ventura: Pet Detective', 'Superbad', 'The Wedding Singer', '50 First Dates')
AND genres IN (
    SELECT genres
    FROM title_basics
    WHERE primaryTitle = 'Ace Ventura: Pet Detective'
    OR primaryTitle = 'Superbad'
)
ORDER BY averageRating DESC
LIMIT 5