SELECT t.titleType, t.primaryTitle, t.startYear, t.genres, r.averageRating, r.numVotes
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
JOIN title_principals p ON t.tconst = p.tconst
JOIN name_basics n ON p.nconst = n.nconst
WHERE t.titleType = 'movie'
AND t.startYear >= 2010
AND t.genres LIKE '%Action%'
AND n.primaryName = 'Keanu Reeves'
AND t.primaryTitle NOT IN ('Point Break (1991)', 'Wonder Woman  (2017)', 'Speed  (1994)', 'Logan  (2017)')
ORDER BY r.averageRating DESC, r.numVotes DESC
LIMIT 5