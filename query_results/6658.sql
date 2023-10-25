SELECT DISTINCT t.titleId AS TitleID FROM title_basic t JOIN title_rating r ON(r.titleId = t.titleId AND r.averageRating >= 7 ) WHERE t.isAdult = false