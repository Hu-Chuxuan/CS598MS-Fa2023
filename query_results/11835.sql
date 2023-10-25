SELECT * FROM (
    SELECT t.*, r.*, c.*
        FROM title AS t
            INNER JOIN rating AS r ON t.titleID = r.titleID
                         AND r.userID IS NULL
            LEFT OUTER JOIN person AS p USING(nameID)
                WHERE EXISTS (SELECT 1 from person as s where p.nameID=s.nameID)
             ORDER BY avgRATING DESC LIMIT 6