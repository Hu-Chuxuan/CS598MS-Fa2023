SELECT title_basics.title, title_ratings.averageRating, name_basics.primaryName
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
WHERE title_basics.genres LIKE '%comedy%'
AND title_ratings.numVotes > 1000
AND name_basics.knownForTitles NOT LIKE '%The Hangover%'
AND name_basics.knownForTitles NOT LIKE '%Harold & Kumar%'
ORDER BY title_ratings.averageRating DESC