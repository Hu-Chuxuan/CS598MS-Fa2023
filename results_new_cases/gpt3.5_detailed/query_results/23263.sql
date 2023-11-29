SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE title_basics.titleType = 'movie'
AND primaryTitle != 'Ring'
AND startYear >= 1998
AND genres LIKE '%Horror%'
AND averageRating >= 6
AND (
    primaryTitle IN ('The Purge: Election Year', 'Jigsaw', 'The Purge')
    OR primaryName IN ('The Purge: Election Year', 'Jigsaw', 'The Purge')
)
GROUP BY title_basics.tconst
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5