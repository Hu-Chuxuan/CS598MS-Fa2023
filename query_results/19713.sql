SELECT t.* FROM (title_basics AS t INNER JOIN title_ratings AS r ON t.titleId = r.movieId WHERE r.averageRating >= 7 AND NOT EXISTS(SELECT * FROM name_basics AS n WHERE n.nameId IN ('Nickelodeon', 'Disney') OR n.primaryProfession LIKE '%Actor%' GROUP BY nameId)) t