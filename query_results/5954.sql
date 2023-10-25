SELECT t.* FROM (title_basics AS t INNER JOIN ( SELECT rating AS r, count(*) as cnt
FROM title_ratings GROUP BY rating ) AS u ON t.titleType = "movie" AND t.startYear >= 1970 AND t.endYear <= 2016 AND t.runtimeMinutes > 0 AND t.isAdult <> 1 AND t.genre IN ('Action','Horror') LIMIT $1 OFFSET $2) WHERE EXISTS(SELECT * from (SELECT n.* FROM name_basics AS n INNER JOIN ( SELECT rating AS r, cast AS ca
STORED PROCEDURES FOR DATA WAREHOUSE IMPLEMENTATION


CREATE OR REPLACE FUNCTION get_data() RETURNS TABLE OF varchar AS $$ BEGIN DECLARE v VARCHAR