SELECT DISTINCT
    t.primaryTitle AS MovieName,
    r.averageRating AS RatedByMean,
FROM
    imdb.title_basic AS tb
JOIN
    imdb.title_rating AS tr ON tb.tconst = tr.tconst AND
                                tr.numvotes > 1 AND
                                tr.avgrating >= 6 OR tr.avgrating <= 8
LEFT JOIN
    imdb.title_recommendation AS re ON tr.tconst IN (tr.tconsts) AND
                                         re.userid IS NULL ORDER BY avgrating DESC LIMIT 3 OFFSET?