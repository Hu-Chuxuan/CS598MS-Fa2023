SELECT * FROM
title_basic AS tb
INNER JOIN(
    SELECT DISTINCT tc.*, avg(v.numvotes) as rating from title_rating as tr INNER JOIN title_basic as tc ON tr.tconst = tc.id AND tr.averageRating >.6 WHERE tr.numVote >= 5 GROUP BY tc.id )
AS r ON tb.title_type=r.primaryTitle