SELECT t.* FROM title_ratings AS r JOIN title_basics AS b ON b.titleID = r.titleID WHERE (r.averageRating > 6 AND NOT EXISTS(SELECT * from name_basics as nb where b.primaryTitle like '%' || nb.primaryName || '%')) OR (r.averageRating < 6)