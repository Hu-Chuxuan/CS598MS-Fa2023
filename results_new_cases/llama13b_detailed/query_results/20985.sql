SELECT title_basics.title, title_basics.primaryTitle, title_basics.genres, name_basics.primaryName, name_basics.knownForTitles
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.nconst
WHERE title_basics.genres LIKE '%Documentary%'
AND name_basics.knownForTitles LIKE '%Documentary%'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT title_basics.tconst
                                     FROM title_basics
                                     WHERE title_basics.genres LIKE '%Documentary%')
)
ORDER BY title_basics.primaryTitle