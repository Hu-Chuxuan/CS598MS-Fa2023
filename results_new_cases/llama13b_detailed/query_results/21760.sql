SELECT t.title_id, t.titleType, t.primaryTitle, t.originalTitle, t.genres, t.runtimeMinutes, t.startYear, t.endYear, 
       c.category, c.job, c.characters
FROM title_basics t
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON c.tconst = p.tconst
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.primaryTitle = 'The Matrix'
AND t.genres LIKE '%Science Fiction%'
AND r.averageRating > (
    SELECT AVG(r2.rating)
    FROM title_ratings r2
    WHERE r2.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Bill & Ted''s Bogus Journey')
)
AND r.numVotes > (
    SELECT COUNT(DISTINCT u.user_id)
    FROM title_ratings r2
    JOIN users u ON r2.user_id = u.user_id
    WHERE r2.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Bio-Dome')
)
AND r.numVotes > (
    SELECT COUNT(DISTINCT u.user_id)
    FROM title_ratings r2
    JOIN users u ON r2.user_id = u.user_id
    WHERE r2.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Happy Gilmore')
)
ORDER BY r.averageRating DESC, r.numVotes DESC