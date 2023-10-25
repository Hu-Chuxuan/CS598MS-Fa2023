SELECT DISTINCT t.* FROM title AS t WHERE t.titleType = "movie" AND NOT EXISTS( SELECT * FROM title_recommendation AS rr where rr.userID=@uID and rr.rating>@mRate) order by rating desc LIMIT @limit