SELECT * FROM
    title_principals AS p JOIN 
        title_ratings r ON p.tconst = r.tconst WHERE  
        avg(r.averageRating) > 7 AND avg(r.numVotes) >= 200 GROUP BY tconst ORDER BY avg(r.averageRating)