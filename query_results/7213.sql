SELECT * FROM
( SELECT DISTINCT
    tb.titleID AS'movieid',
    tr.rating AS rating,
FROM title_basic AS tb INNER JOIN title_recommendation AS tr ON tb.titleID = tr.titleID WHERE tr.userID IS NULL AND tb.isAdult!= true ORDER BY tr.rating DESC LIMIT 8 ) AS movies