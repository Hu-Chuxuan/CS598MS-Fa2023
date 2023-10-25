SELECT * FROM
    `title_basics` AS tb INNER JOIN
        (`name_basics` as nb ON nb.`primaryName` = tb.`primaryTitle`) LEFT OUTER JOIN
        	(`title_crew` as tc ON tc.`director` LIKE '%Tom Hanks%') WHERE
            nb.`startYear` BETWEEN? AND? AND nb.`deathYear` >? AND
            	tb.`genre` IN ('Drama','Biography')