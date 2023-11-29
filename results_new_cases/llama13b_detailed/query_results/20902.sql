SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 5
AND title_basics.genres LIKE '%Comedy%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%The Ring%'
AND name_basics.knownForTitles LIKE '%The Silence of the Lambs%'
AND NOT EXISTS (
    SELECT 1 FROM title_principals
    WHERE title_principals.tconst = title_basics.tconst
    AND title_principals.category = 'actor'
    AND title_principals.job = 'blacksmith'
)
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC