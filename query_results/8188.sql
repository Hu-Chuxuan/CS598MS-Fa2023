SELECT * FROM
(select tb.* from title_basic as tb where tb.titleType='Movie') as m INNER JOIN
(select tr.* from title_rating as tr WHERE tr.primaryTitle=m.titleBasics.primaryTitle AND tr.numVotes>5 )as r ON m.titleBasics.primaryTitle =r.averageRating