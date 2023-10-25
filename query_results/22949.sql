SELECT t.* FROM (title_basics AS t INNER JOIN
(name_basics as n) ON t.primaryTitle = n.primaryTitle AND t.startYear >= n.birthYear AND t.endYear <= n.deathYear WHERE
t.isAdult = FALSE ORDER BY rating DESC LIMIT 6)
AS rr INNER JOIN (title_ratings AS s) ON rr.titleID=s.titleID GROUP BY s.movieID HAVING COUNT(*) >0