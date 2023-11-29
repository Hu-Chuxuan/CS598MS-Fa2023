SELECT * FROM tb_recommendation
WHERE
    numVotes > 1 AND
    avgRate >= 6 AND
    titleType = “Movie” OR
    ((titleType <> “TVSeries” AND (startYear < 1900)))