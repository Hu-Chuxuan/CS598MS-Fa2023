SELECT title_basic.* FROM title_basic JOIN title_rating ON title_basic.titleID = title_rating.titleID WHERE title_basic.primaryTitle LIKE '%fun%' AND title_basic.startYear BETWEEN 1970 AND 2000