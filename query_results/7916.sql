SELECT * FROM
    title_principals WHERE title_id = @title_id AND category IN ('cast','actress') ORDER BY ordering ASC LIMIT @limit OFFSET (@offset*@limit)