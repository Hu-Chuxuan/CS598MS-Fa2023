SELECT DISTINCT t.titleID AS id FROM title_basics as t JOIN title_rating as r ON r.titleID = t.id AND r.averageRating >= 8 WHERE t.isAdult!= 'true'