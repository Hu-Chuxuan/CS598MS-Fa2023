SELECT t.titleID AS TITLE IDENTIFIER, t.titleType AS TYPE OF MOVIES TO BE RECOMMENDED FROM
    title_basics t JOIN
    ( SELECT AVG(rating) as avgRatings, COUNT(*) as totalRated from rating WHERE titleType = "SUSPENSE" GROUP BY titleType ) r ON t.titleType=r.titleType AND t.titleID = r.titleID