SELECT * FROM title_recommendation WHERE
    ((title_id =? AND actor IN ('Johnny Depp')) OR (title_id =? AND genre CONTAINS 'Horror') ) ORDER BY rating DESC LIMIT 3