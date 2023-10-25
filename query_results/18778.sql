SELECT t.titleID as MovieId,
    nc.nameID AS NameId,
    nc.categoryID As CategoryId,
    nc.jobID As JobId,
    COUNT(DISTINCT t.titleID) AS MoviesSeenByUserCounts,
FROM
    (SELECT DISTINCT titleID FROM title_basics WHERE primaryTitle =? AND isAdult!= 1 GROUP BY titleID) AS t
JOIN
    (SELECT distinct nameID from name_basics where primaryName=? OR birthyear >? AND deathyear <=? )AS nc ON t.titleID = nc.movieID
WHERE
    ((nc.categoryID IS NULL OR nc.categoryID IN ('Actress','Director')) AND (nc.JobIsNull Or nc.Job='Actor')))AND (nc.CategoryID in ('Producer') OR (nc.CategoryID NOT IN('Writer','Camera','Editor','Artist') OR (nc.JobIsNull And nc.JobNotIn('Production Designer','Sound Engineer','Costume Designer','Makeup Artist'))))GROUP by TitleID