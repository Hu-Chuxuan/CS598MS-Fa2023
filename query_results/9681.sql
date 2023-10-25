SELECT * FROM
title_ratings tr INNER JOIN
(select r.* from ratings r where r.userID=?) as u ON u.rating = ttr.averageRatng