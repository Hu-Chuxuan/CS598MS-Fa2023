SELECT * FROM 
(select rating from title_rating where title like '%romantic%') AS t1 inner join 
title_basic b ON t1.primaryTitle = b.primaryTitle AND b.startYear < 2000 WHERE t1.numVotes > 6 ORDER BY b.averageRating DESC LIMIT 10