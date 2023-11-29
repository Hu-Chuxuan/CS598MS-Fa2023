SELECT * FROM title_basics
WHERE genres LIKE '%Adventure%' AND genres LIKE '%Family%' AND isAdult = 0
AND (
    (runtimeMinutes > 60 AND runtimeMinutes < 120)
    OR (runtimeMinutes > 90 AND runtimeMinutes < 150)
    OR (runtimeMinutes > 120 AND runtimeMinutes < 180)
)
AND (
    (startYear = 2009 AND endYear = 2009)
    OR (startYear = 2004 AND endYear = 2004)
)
AND (
    (directors LIKE '%Ron%Hans%Weaver%' OR directors LIKE '%Brian%Grazer%')
    OR (writers LIKE '%Akiva%Goldsman%' OR writers LIKE '%James%Vanderbilt%')
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5