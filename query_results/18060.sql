SELECT * FROM rating WHERE (movie LIKE '%The Rock%' OR director LIKE '%The Rock%') AND userID = $userid