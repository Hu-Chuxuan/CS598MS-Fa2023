SELECT t.* FROM (
    SELECT * FROM title_rating WHERE userId =? AND genre IN ('comedy','drama') ORDER BY avgRating DESC LIMIT 1