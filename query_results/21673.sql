SELECT * FROM (
    SELECT tb.*, nr.*
       , COUNT(*) OVER(PARTITION BY rr.rating) AS ratingCounts
           , MAX(nr.rating) OVER() AS highestRatedMovie
FROM title_basic AS tb
JOIN title_ratings AS tr ON tb.titleId = tr.titleId
LEFT JOIN name_basics as nb ON tb.nameId=nb.nameId
LEFT OUTER JOIN ratings_recommended AS rr USING(titleId) WHERE rr.userId='08e7c9d9-a5ff-4df5-bfcb-4fcbbfe7fdad'