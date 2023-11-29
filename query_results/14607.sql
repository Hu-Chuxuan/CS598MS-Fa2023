SELECT * FROM (
    SELECT title_basics.*, title_rating.*, title_crew.*, title_principal.*
FROM title_basic INNER JOIN title_rating ON title_basics.tconst = title_rating.tconst AND title_rating.numvotes > 1 WHERE title_basics.startyear < 1960 OR title_basics.endyear >= 1960 ORDER BY title_basic.startyear DESC LIMIT 3
UNION ALL
SELECT title_basic.*, title_rating.*, title_crew.*, title_prinicpal.*
FROM title_basic INNER JOIN title_rating ON title_basics.tconst = title_rating.tconst AND title_rating.numvotes > 1 WHERE title_basics.isadult=1 AND title_basics.startyear <= 1970 AND title_basics.endyear >= 1970 ORDER BY title_basic.startyear ASC LIMIT 3
) AS t UNION ALL
SELECT * FROM (
        SELECT title_basics.*, title_rating.*, title_crew.*, title_princpal.*
            FROM title_basic INNER JOIN title_rating ON title_basics.tconst = title_rating.tconst AND title_rating.numvotes > 1 WHERE title_basics.startyear >= 1960 AND title_basics.startyear < 1970 AND title_basics.genre IN ('Action','Drama') ORDER BY title_basics.startyear DESC LIMIT 3
        )AS b UNION ALL
SELECT * FROM (
                SELECT title_basics.*, title_rating.*, title_crew.*, title_princeal.*
                    FROM title_basic INNER JOIN title_rating ON title_basics.tconst = title_rating.tconst AND title_rating.numvotes > 1 WHERE title_basics.startyear >= 1970 AND title_basics.startyear < 1980 AND title_basics.genre IN ('Horror','Science Fiction')ORDER BY title_basics.startyear ASC LIMIT 3
               )AUS