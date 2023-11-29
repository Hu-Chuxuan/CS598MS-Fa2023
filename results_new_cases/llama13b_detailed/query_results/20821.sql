SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE title_basics.genres LIKE '%Animation%'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_basics.genres LIKE '%Animation%'
)
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%A Bug%s Life%'
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC