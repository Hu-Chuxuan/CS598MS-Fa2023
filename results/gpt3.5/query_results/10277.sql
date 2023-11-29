SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE (primaryName = 'Julia Styles' OR primaryName = 'Heath Ledger')
AND titleType = 'movie'
AND primaryTitle NOT IN ('The Dark Knight Rises', 'Brokeback Mountain', "A Knight's Tale")
ORDER BY averageRating DESC
LIMIT 10