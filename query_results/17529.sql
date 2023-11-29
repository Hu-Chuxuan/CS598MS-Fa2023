SELECT * FROM (
    SELECT t.*, nc.primaryName AS NameFromPrincipalCrewTable, nd.averageRating, nd.numVotes 
        FROM title_basics t INNER JOIN title_principals np ON t.tconst = np.tconst AND np.category='director' OR np.category=np.job WHERE t.isAdult IN ('0','1')
            UNION ALL
        	SELECT p.ordering, p.nconst, p.category, p.job, p.characters, avg(rating), count(*) FROM title_principals p LEFT OUTER JOIN title_ratings rr ON p.tconst = rr.tconst GROUP BY p.ordering, p.nconst, p.category, p.job, p.characters ORDER BY avg(rating)