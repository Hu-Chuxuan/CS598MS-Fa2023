SELECT tb1.primaryTitle AS RecommendedMovie
FROM title_principals AS tp1
JOIN title_basics AS tb1 ON tp1.tconst = tb1.tconst
JOIN title_ratings AS tr1 ON tp1.tconst = tr1.tconst
WHERE tp1.nconst IN 
    (SELECT nconst 
     FROM title_principals 
     WHERE tconst = 
        (SELECT tconst 
         FROM title_basics 
         WHERE primaryTitle = 'Date Night' AND startYear = 2010))
AND tp1.category = 'actor'
AND tr1.averageRating >= 6
AND tr1.numVotes >= 1000
AND tb1.tconst NOT IN 
    (SELECT tconst 
     FROM title_principals 
     WHERE nconst = 
        (SELECT nconst 
         FROM name_basics 
         WHERE primaryName = 'Steve Carell'))
AND tb1.tconst NOT IN 
    (SELECT knownForTitles 
     FROM name_basics 
     WHERE primaryName = 'Steve Carell' LIMIT 3)
AND tb1.tconst NOT IN 
    (SELECT knownForTitles 
     FROM name_basics 
     WHERE primaryName = 'Steve Carell' LIMIT 3)
AND tb1.genres = 
    (SELECT genres 
     FROM title_basics 
     WHERE primaryTitle = 'Date Night' AND startYear = 2010)
AND tb1.tconst NOT IN 
    (SELECT tconst 
     FROM title_basics 
     WHERE primaryTitle = 'The 40-Year-Old Virgin' AND startYear = 2005)
LIMIT 5