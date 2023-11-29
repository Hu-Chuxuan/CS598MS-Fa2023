SELECT * 
FROM title_basics 
WHERE tconst IN (SELECT tconst 
                     FROM title_ratings 
                     WHERE averageRating > (SELECT AVG(averageRating) 
                                              FROM title_ratings 
                                              WHERE tconst = 'Pitch Perfect'
                                             )
                    )