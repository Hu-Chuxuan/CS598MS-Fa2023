SELECT t.* FROM title_basic AS t WHERE t.titleType = "movie" AND EXISTS( SELECT * from ( SELECT rating FROM title_rating WHERE userID =? ) AS r GROUP BY rating ORDER by COUNT(*) DESC LIMIT 6)