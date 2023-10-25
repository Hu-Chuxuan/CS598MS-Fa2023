SELECT t.* FROM
title_rating AS r INNER JOIN
( SELECT * from title_recommendation where userID = x AND genre = y ) as s ON r.numvotes > s.numvotes WHERE r.averageRATING >= 6