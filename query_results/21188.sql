SELECT * FROM ( SELECT rating AS RATING, count(rating) as RECOMMENDATIONS,
                      TITLE_CREW.*, TITLE_PRINCIPALS.*,
                       (CASE WHEN CHARACTERS = '' THEN NULL ELSE CAST((CHARACTERS + '')AS INT ) END) AS NUMBEROFCHARACTER,
                        CONCAT(' ', PRIMARYNAME,' (', BIRTHYEAR-1900,') ') AS NAME
FROM   ((title_basic JOIN title_ratings ON tconst=title_basic.tconst AND tconst IN ('mastermind','seedofchucky')) LEFT OUTER JOIN (title_crew JOIN title_principal ON tconst=title_crew.tconst AND tconst IN ('director','writer'))) ON title_ratings.tconst=title_basic.tconst WHERE title_basic.isadult='false' AND title_basic.startyear>1980 GROUP BY tconst, title_ratings.averageRating,numvotes,
               TITLE_CREW.*, TITLE_PRINCIPALS.* ORDER BY COUNT(*) DESC LIMIT 10 OFFSET 0) A WHERE A.RECOMMENDATIONS >= :USER_PREFERENCEHISTORY[0]