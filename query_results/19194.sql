SELECT DISTINCT title_basics.* FROM title_basics INNER JOIN title_ratings ON title_basics.titleID = title_ratings.titleID WHERE rating >= 8 AND rating <= 9