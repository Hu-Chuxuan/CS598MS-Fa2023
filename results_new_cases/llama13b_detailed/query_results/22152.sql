SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND (primaryTitle LIKE '%tear jerker%' OR originalTitle LIKE '%tear jerker%')
AND (genres LIKE '%drama%' OR genres LIKE '%comedy%' OR genres LIKE '%romance%')
AND (directors LIKE '%Julia Roberts%' OR directors LIKE '%Reese Witherspoon%')
AND (writers LIKE '%Nicole Kidman%' OR writers LIKE '%Meryl Streep%')
AND (characters LIKE '%strong female lead%' OR characters LIKE '%emotional journey%')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5