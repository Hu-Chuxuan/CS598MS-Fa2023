SELECT movies.* FROM
(title_basics tb INNER JOIN title_ratings tr ON tb.primaryTitle = tr.titleId AND tb.isAdult=tr.isAdult),
name_basics nb INNER JOIN title_crew tc ON nb.nconst = tc.primaryName WHERE
tb.startYear >= 1976 AND tb.endYear <= 2018 GROUP BY tb.primaryTitle HAVING COUNT(*) > 3