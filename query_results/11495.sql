SELECT t.* FROM title_basics AS t JOIN title_rating ON t.titleID = title_rating.titleID WHERE rating > 7