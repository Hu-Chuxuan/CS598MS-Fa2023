SELECT * FROM title_principals WHERE
job = "actor" AND
characters IN ('Columbus','Wichita') OR
characters LIKE '%Zombie%' ORDER BY characters