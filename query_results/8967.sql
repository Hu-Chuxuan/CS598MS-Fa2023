SELECT * FROM
    `title_basic` AS b JOIN
    `title_rating` AS r ON b.`primaryTitle` = r.`primaryTitle`,
        b.`startYear` <= @year AND (@year < b.`endYear`) OR @year IS NULL WHERE EXISTS ( SELECT * FROM `title_principal` p JOIN `title_crew` c USING (`tconst`) WHERE c.`job` LIKE '%Director%' ) GROUP BY b.`tconst` ORDER BY RANDOM() LIMIT 3 OFFSET 0 