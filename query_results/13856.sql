SELECT t.titleId AS TitleID, t.rating AS Rating FROM title_ratings as r INNER JOIN title_basic as b ON r.primaryTitle = b.titleId WHERE (b.isAdult=0) AND (r.averageRating > 6)