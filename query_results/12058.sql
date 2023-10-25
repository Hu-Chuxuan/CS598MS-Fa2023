SELECT t.titleID AS TitleId, t.titleType as TypeOfMovie FROM title_basic t WHERE t.isAdult = false AND ((t.startYear >= 1980 OR t.endYear <= 2016)) AND EXISTS(SELECT * FROM rating r JOIN user u ON r.userid=u.userID where r.averageRating > 7/10 and u.userID='julia roberts') GROUP BY t.titleID