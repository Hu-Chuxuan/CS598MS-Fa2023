SELECT tb.* FROM title_basic as tb INNER JOIN
    title_rating as tr ON tb.titleId = tr.titleId AND tr.userID=<insert user ID>
WHERE rating >= <insert minimum rating>
ORDER BY avg(tr.avgRating)