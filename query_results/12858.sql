SELECT t.* FROM title_basics AS t INNER JOIN (title_ratings r) ON t.id = r.tconst WHERE t.primaryTitle LIKE "horror" AND r.averageRATING >=.80