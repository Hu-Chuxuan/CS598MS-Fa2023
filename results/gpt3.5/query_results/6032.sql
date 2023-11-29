SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.tconst IN ('tt0482571', 'tt0482571', 'tt0407887', 'tt1375666', 'tt0241527', 'tt0325980', 'tt0241527')
AND title_basics.titleType = 'movie'
AND title_basics.startYear <= 2010
AND title_ratings.averageRating >= 7.5
AND title_basics.tconst != 'tt1130884'
ORDER BY title_ratings.numVotes DESC
LIMIT 5