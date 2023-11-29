SELECT
    TOP (10)
        title_basics.*,
        title_crew.*,
        title_principals.*,
        title_ratings.*,
        
    FROM
        #title_basics AS title_basics LEFT JOIN #title_ratings AS title_ratings ON title_basics.tconst = title_ratings.tconst INNER JOIN #title_crew AS title_crews USING(tconst),
            
            --LEFT JOIN #title_principals AS title_principal ON title_prinicpal.ordering=title_rating.ordering WHERE title_princapal.category='actress','character' AND title_princapal.job LIKE '%actor%' OR title_princecapal.job LIKE '%director%')
    
    WHERE  
           ((title_basics.isAdult>0))AND((title_basics.startYear<=2017))OR((title_basics.endYear>=2017)) AND (((title_basics.genre like '%comedy%' OR title_basics.genre like '%drama%')))
                              AND ((title_crew.writers like '%christopher%'))AND((title_crew.directors like '%martin mcdonagh%'))
                GROUP BY 1 ORDER BY 1 DESC LIMIT 10 OFFSET 0