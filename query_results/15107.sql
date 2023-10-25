SELECT t.* FROM (title_basics AS t INNER JOIN name_basics ON t.`tconst` = `nconst`) LEFT OUTER JOIN title_ratings ON t.`primaryTitle` = title_ratings.`averageRating`, t.`startYear` <= 2018 AND t.`endYear` >= 1970 WHERE t.`genre` IN ('Science Fiction','Fantasy') OR t.`isAdult`=TRUE