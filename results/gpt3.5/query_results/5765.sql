SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Holocaust%'
AND title_basics.tconst NOT IN ('tt0095776', 'tt0162661', 'tt0105695')  -- excluding User Preference History
ORDER BY averageRating DESC
LIMIT 5