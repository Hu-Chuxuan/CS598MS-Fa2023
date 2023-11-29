SELECT title_basics.title, title_basics.primaryTitle, title_basics.genres, title_ratings.averageRating, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Animation' OR title_basics.genres = 'Family' OR title_basics.genres = 'Children'
AND title_ratings.averageRating > 7
AND title_principals.job = 'Actor'
AND title_principals.characters LIKE '%child%'
AND name_basics.primaryProfession = 'Actor'
AND name_basics.knownForTitles = ANY (
    SELECT name_basics.knownForTitles
    FROM name_basics
    WHERE name_basics.primaryProfession = 'Actor'
    AND name_basics.knownForTitles LIKE '%Jarhead%'
    OR name_basics.knownForTitles LIKE '%Inception%'
)
GROUP BY title_basics.title, title_basics.primaryTitle, title_basics.genres, title_ratings.averageRating, title_principals.characters
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC