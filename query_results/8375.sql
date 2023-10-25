SELECT t.* FROM
( SELECT tb.title AS 'Movie Title',
       nr.rating AS 'Average Rating',
        nc.name AS 'Character Name',
         tc.category AS 'Category of Character',
          tc.job AS 'Job Of Charater',
          tc.characters AS 'Number of Characters Played By This Person in Other Movies'
    FROM title_basic tb INNER JOIN
           (SELECT DISTINCT title_ratings.movie AS "title", AVG(title_ratings.averageRatings) AS "avg" FROM title_ratings GROUP BY title_ratings."title") nr ON tb.title = nr.title
   LEFT OUTER JOIN (SELECT * from name_basics WHERE primaryName LIKE "%John Smith%" ORDER BY primaryName ASC LIMIT 10 OFFSET 0 )nc USING (primaryName)
     INNER JOIN (SELECT * from title_crew where director="Rob Cohen" AND genre IN ("Action","Comedy"))tc ON tb.id=tc.titleID
WHERE
tb.isAdult='false' OR tb.startYear>=1870 AND tb.endYear<=2016
AND tb.genre NOT IN ('Documentary','News') AND tb.originalTitle IS NULL
GROUP BY tb.id HAVING COUNT(*)>2
ORDER BY avg DESC limit 10