SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Action%' OR genres LIKE '%Thriller%')
AND (startYear >= 1985 AND startYear <= 1992)
AND title_basics.titleType = 'movie'
AND title_basics.tconst NOT IN ('tt0111161', 'tt0110912', 'tt0097240', 'tt0080487', 'tt0105236', 'tt0100698', 'tt0110912', 'tt0105236') 
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10