SELECT t.* FROM title_basics AS t JOIN title_rating ON title_rating.title_id = t.title_id WHERE (((t.isAdult)='false') AND ((t.startYear)>=1980)) ORDER BY avg(t.averageRating)