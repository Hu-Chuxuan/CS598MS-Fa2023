SELECT t.* FROM title_basic AS t INNER JOIN rating_basic as r ON r.titleID = t.titleID WHERE t.isAdult <> 'true' AND r.averageRating >= 6