SELECT DISTINCT tb.* FROM `title_basic` AS tb LEFT JOIN (`name_basic`,`title_rating`) ON(tb.`primaryTitle` = `nm`.`primaryName`) AND ((tb.`isAdult`=0 OR tb.`startYear<=1976)) WHERE tb.`genre` IN ('Action','Comedy') ORDER BY RAND() LIMIT 5