SELECT t.* FROM title_basics AS t JOIN title_ratings AS r ON(r.titleId = t.id) WHERE t.isAdult=false AND r.averageRating > 6