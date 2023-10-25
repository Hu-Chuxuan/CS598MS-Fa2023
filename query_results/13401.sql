SELECT * FROM (
    SELECT t.title_id AS id, p.*
     , COUNT(*) OVER () AS total_votes
        -- other fields here if needed...
FROM title_ratings r JOIN title_principals p ON r.title_id = p.title_id