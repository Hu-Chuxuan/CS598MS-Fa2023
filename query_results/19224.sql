SELECT * FROM (
    SELECT title_ratings.*,
        CONCAT('user ', name_basics.primaryName,' (',name_basics.birthYear,'-',name_basics.deathYear,') rated ',title_basic.startYear,'-',title_basic.endYear,': ') AS MovieInfo
    	FROM (
            SELECT * from title_basics WHERE ((startYear >= '1990')) AND ((endYear <= '2020')) ORDER BY avgRating DESC LIMIT 1
         )AS TitleBasics LEFT JOIN
             (SELECT title_ratings.*,CONCAT('user ', name_basics.primaryName,' (',name_basics.birthYear,'-',name_basics.deathYear,') liked ',title_basic.startYear,'-',title_basic.endYear,': ') AS MovieInfo
              from ( SELECT * from title_ratings where ((startYear >= '1990'))AND((endYear <= '2020'))ORDER BY numvotes desc limit 1)as TitleRatings left join
                      (SELECT * from name_basics order by birthyear asc limit 1)as NameBasics ON TitleBasic.titleid = TitleRatings.titleid  
                GROUP BY title_basics.titleID HAVING COUNT(*)>1)