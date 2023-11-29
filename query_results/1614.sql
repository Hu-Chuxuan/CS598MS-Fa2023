SELECT * FROM
    (SELECT r.*, c.*, d.*, m.*, p.*
     FROM title_ratings AS r LEFT JOIN title_basics AS b ON r.tconst=b.tconst
     INNER JOIN name_basics AS c ON b.primaryName = c.nconst
     RIGHT OUTER JOIN title_crew AS d ON b.tconst = d.tconst AND d.category='Director'
     LEFT OUTER JOIN title_principals AS p ON b.tconst = p.tconst AND p.job IN ('Actor','Producer')
     WHERE (c.primaryName LIKE '%Angelina%')) AS r
WHERE r.averageRating >= 7.5 AND r.numVotes > 5000 ORDER BY avg(r.rating) DESC LIMIT 5