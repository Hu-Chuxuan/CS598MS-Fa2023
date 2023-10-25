SELECT t.* FROM
title_rating AS r INNER JOIN title_basics AS b ON r.title_id = b.title_id AND r.average_rating >= @minAverage RATING WHERE
b.isadult = false AND b.startyear <= YEAR(CURRENT DATE()) - 10 AND b.endyear > YEAR(CURRENT DATE())