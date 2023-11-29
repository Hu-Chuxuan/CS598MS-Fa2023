SELECT primaryTitle 
FROM title_basics 
WHERE tconst IN (
    SELECT tconst 
    FROM title_ratings 
    WHERE averageRating > 8.0 
    AND numVotes > 100000
) 
AND startYear >= 2000 
AND genres LIKE '%Crime%' 
AND genres LIKE '%Thriller%' 
AND tconst NOT IN ('tt0120737', 'tt0443706', 'tt0443706')