SELECT t.title_basics.title, t.title_basics.primaryTitle, t.title_basics.genres, t.title_crew.directors, t.title_principals.characters
FROM title_basics t
JOIN title_crew ON t.tconst = title_crew.tconst
JOIN title_principals ON t.tconst = title_principals.tconst
WHERE t.primaryTitle LIKE '%comedy%'
AND t.genres LIKE '%Comedy%'
AND t.title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%Shallow Hal (2001)%' OR primaryTitle LIKE '%The Holiday (2006)%' OR primaryTitle LIKE '%There%27s Something About Mary (1998)%')
)
ORDER BY t.title_ratings.averageRating DESC