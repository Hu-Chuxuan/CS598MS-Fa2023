SELECT t.title_basics.title, t.title_basics.primaryTitle, t.title_basics.originalTitle, t.title_basics.isAdult, t.title_basics.startYear, t.title_basics.endYear, t.title_basics.runtimeMinutes, t.title_basics.genres, t.title_ratings.averageRating, t.title_ratings.numVotes, n.name_basics.primaryName, n.name_basics.birthYear, n.name_basics.deathYear, n.name_basics.primaryProfession, n.name_basics.knownForTitles
FROM title_basics t
JOIN title_ratings ON t.tconst = t.title_ratings.tconst
JOIN name_basics ON t.tconst = n.name_basics.tconst
WHERE t.genres LIKE '%comedy%'
AND t.title_ratings.averageRating > 7
AND t.title_ratings.numVotes > 1000
AND n.primaryName LIKE '%funny%'
OR n.knownForTitles LIKE '%funny%'
OR t.originalTitle LIKE '%funny%'
OR t.title LIKE '%funny%'
ORDER BY t.title_ratings.averageRating DESC, t.title_ratings.numVotes DESC