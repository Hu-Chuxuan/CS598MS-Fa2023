SELECT * from title_ratings where averageRating > 5 limit 10 offset 10 order by avgRat desc
union SELECT * from title_rating where averageRating < 4 limit 10 offset 10 order by avgRat asc
order by numVotes desc limit 5