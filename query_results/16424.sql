SELECT t1.* FROM title_basics AS t1 JOIN title_ratings AS t2 ON t1.`titleID` = t2.`titleID` WHERE t2.`numvotes` > 0 AND ((t1.`startyear` >= 1970) AND (t1.`endyear` <= 2021)) GROUP BY `movieID`, `genre` ORDER BY `averageRatings`