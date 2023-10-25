SELECT t.* FROM title_basics AS t JOIN title_ratings AS r ON t.titleId = r.titleId WHERE r.averageRating > 6 AND NOT EXISTS( SELECT * FROM name_basics as u where u.primaryName='Andy Muschietti' ) GROUP BY t.titleId ORDER BY COUNT(*) DESC LIMIT 1