SELECT t.titleId AS id FROM title_basic t JOIN title_rating tr ON t.titleID = tr.titleId AND rating >.8 WHERE t.titleId NOT IN ('Lady Bird', 'Hidden Figures') ORDER BY t.averageRating DESC LIMIT 3