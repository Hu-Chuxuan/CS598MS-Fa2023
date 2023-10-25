SELECT t.* FROM title_basics AS t JOIN( SELECT * from title_ratings WHERE rating >= 6 AND rating <= 7 ) AS r ON ((r.title = t.primaryTitle))
WHERE t.startYear BETWEEN 1975 AND 2015