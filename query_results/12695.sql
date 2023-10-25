SELECT * FROM
(title_ratings INNER JOIN title_basics ON title_ratings.averageRating = title_basics.rating)
INNER JOIN name_basics USING (primaryName)