SELECT * FROM title_basics WHERE tconst IN ('title_ratings','name_basics') AND
(originalTitle = "The Mummy" OR originalTitle LIKE "%mummy%" )AND rating >= 6