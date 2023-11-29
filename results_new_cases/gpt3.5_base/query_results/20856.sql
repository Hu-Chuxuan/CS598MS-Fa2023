SELECT primaryTitle
FROM title_basics
WHERE tconst IN (SELECT tconst FROM title_principals WHERE nconst IN 
    (SELECT nconst FROM title_principals WHERE tconst IN 
        (SELECT tconst FROM title_basics WHERE primaryTitle = 'Get Out')
    )
)
AND titleType = 'movie'
AND primaryTitle != 'Get Out'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5