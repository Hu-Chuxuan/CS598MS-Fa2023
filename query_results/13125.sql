SELECT t.* FROM (((title_basic AS b INNER JOIN name_basic AS n ON b.primaryName = n.primaryName AND n.birthYear <= b.startYear)) INNER JOIN ((title_crew AS c LEFT OUTER JOIN title_principal AS p USING(tconst)) INNER JOIN title_rating AS r ON c.directors LIKE '%[\"%\"|%]%' OR c.writers LIKE '%[\"%\"|%]%' OR p.job LIKE '%[\"%\"|%]%' OR n.category IN ('director','producer') OR n.category='self')) WHERE b.isAdult=0 ORDER BY b.runtimeMinutes DESC LIMIT 10 OFFSET 0 