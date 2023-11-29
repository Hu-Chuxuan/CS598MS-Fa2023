SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2005
AND genres LIKE '%Thriller%'
AND genres LIKE '%Horror%'
AND averageRating >= 7
AND title_basics.tconst NOT IN ('tt0111161', 'tt0110912', 'tt0109830')  -- Exclude some well-known movies
ORDER BY averageRating DESC
LIMIT 5