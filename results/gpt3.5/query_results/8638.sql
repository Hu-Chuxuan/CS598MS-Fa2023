SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND primaryTitle NOT IN ('Terminator 2: Judgment Day (1991)', 'Avenger (2006)', 'Jumanji (2017)', 'I, Robot (2004)')
AND startYear <= 2019
ORDER BY numVotes DESC
LIMIT 5