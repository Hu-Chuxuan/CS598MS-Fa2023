SELECT t.* FROM Title AS t INNER JOIN Title_Principals as p ON t.titleID = p.titleID WHERE p.category='Actor' AND p.job IN ('Character') ORDER BY rating DESC LIMIT 3