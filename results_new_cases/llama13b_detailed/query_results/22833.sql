SELECT t.title, t.primaryTitle, t.genres, t.runtimeMinutes, t.startYear, t.endYear, r.averageRating, r.numVotes
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.genres LIKE '%Horror%' AND r.averageRating > 6 AND r.numVotes > 100
ORDER BY r.averageRating DESC