SELECT t1.* FROM `title` AS t1 INNER JOIN `name_basics` AS t2 ON t1.`primaryTitle` = t2.`primaryName` WHERE t2.`category` IN ('Actress','Director') AND t1.`isAdult` IS NULL