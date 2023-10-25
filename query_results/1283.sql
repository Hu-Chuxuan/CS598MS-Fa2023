SELECT * FROM 
    (SELECT title_basics.*,title_ratings.*,name_basics.*,title_crew.*,title_principals.*  
     FROM title_basic INNER JOIN title_rating ON title_basic.tconst=title_rating.tconst AND title_basic.primaryTitle = title_rating.titleID LEFT OUTER JOIN name_basics USING(tconst), 
                        title_crew WHERE tconst='5772') AS title_recommendation 
INNER JOIN title_basic USING(tconst), 
                      title_rating USING(tconst) 
LEFT OUTER JOIN name_basics USING(tconst) 
WHERE title_recommendation.isAdult IN ('true','false')AND title_recommendation.startYear >= '1900-01-01' AND title_recommendation.endYear <= '2020-01-01' AND title_recommendation.genres NOT LIKE '%Drama%' OR title_recommendation.genres LIKE '%Comedy%' OR title_recommendation.genres LIKE '%SciFi%'OR title_recommendation.genres LIKE '%Horror%'