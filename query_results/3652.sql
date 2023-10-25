SELECT DISTINCT r.* FROM title_ratings AS t INNER JOIN
    ((title_basic AS b LEFT OUTER JOIN name_basics as m ON b.primaryTitle = m.primaryName AND b.startYear <= m.birthYear) INNER JOIN
     (title_crew AS c LEFT OUTER JOIN name_basics as d ON c.directorID=d.id AND c.startYear >= d.birthYear) UNION ALL SELECT * FROM title_principals WHERE t.averageRating > 6.5