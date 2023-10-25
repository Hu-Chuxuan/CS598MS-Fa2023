SELECT * FROM title_ratings WHERE rating >=? AND title IN(
    SELECT title_id AS tID FROM title_principals WHERE category = "actress" OR category="actor") ORDER BY avgRATING DESC LIMIT 6