SELECT DISTINCT tc.* FROM title_ratings tr INNER JOIN title_basics tb ON tr.titleID=tb.id
INNER JOIN name_basics nb ON nb.primaryName = tb.name_basics.primaryName WHERE
nb.category='Actor')
WHERE rating>8 AND averageRATING<9