SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%romantic comedy%'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'When Harry Met Sally... (1989)')
)
AND title_principals.characters NOT LIKE '%Al Pacino%'
ORDER BY title_ratings.averageRating DESC