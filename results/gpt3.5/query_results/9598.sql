SELECT primaryTitle 
FROM title_basics 
WHERE tconst IN (
    SELECT tconst 
    FROM title_ratings 
    WHERE averageRating > 7.5 
    AND numVotes > 100000 
    AND startYear > 2015 
    AND genres LIKE '%Horror%'
) 
AND tconst NOT IN (
    SELECT tconst 
    FROM title_ratings 
    WHERE averageRating < 6 
    AND numVotes > 50000
) 
AND tconst NOT IN (
    SELECT knownForTitles 
    FROM name_basics 
    WHERE primaryName = 'Don''t Breathe' 
    AND startYear = 2016
) 
AND tconst NOT IN ('tt5580390', 'tt0397101', 'tt7725596', 'tt4846232', 'tt4786282')