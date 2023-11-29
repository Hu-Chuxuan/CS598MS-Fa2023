SELECT tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tc.directors LIKE CONCAT('%', nb.nconst, '%')
WHERE nb.primaryName = 'Steven Spielberg'
AND tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.endYear = '\N'
AND tb.tconst NOT IN ('tt0120815', 'tt0083866', 'tt0107114')   -- excluding user's previously watched movies
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10