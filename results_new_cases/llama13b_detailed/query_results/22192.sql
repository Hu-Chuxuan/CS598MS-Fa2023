SELECT * FROM title_basics
WHERE
genres LIKE '%Suspense%'
AND (
    (directors LIKE '%J.G.%')
    OR (writers LIKE '%J.G.%')
    OR (name_basics.primaryProfession LIKE '%Director%')
    OR (name_basics.primaryProfession LIKE '%Writer%')
)
AND NOT (title_basics.isAdult = 1)
AND NOT (title_basics.endYear = '\N')
AND NOT (title_principals.category ='self')
AND NOT (title_principals.job = '\N')
AND NOT (title_principals.characters = '\N')

This SQL query will retrieve all movies with the genre 'Suspense' and have a director or writer with the name 'J.G.' or have a primary profession of 'Director' or 'Writer'. It will also exclude adult movies, movies without an end year, and movies without principal staff information