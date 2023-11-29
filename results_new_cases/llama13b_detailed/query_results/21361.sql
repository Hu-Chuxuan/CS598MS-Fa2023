SELECT tconst, primaryTitle, genres, directors, writers
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE genres LIKE '%Science Fiction%'
AND directors = 'nm0005690'
AND writers = 'nm0085156'
AND title_ratings.averageRating > 7
ORDER BY title_ratings.averageRating DESC