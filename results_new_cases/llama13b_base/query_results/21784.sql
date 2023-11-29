SELECT t.title_id, t.title, t.original_title, t.start_year, t.end_year, t.runtime_minutes, t.genres,
       r.average_rating, r.num_votes, n.primary_name, n.birth_year, n.death_year, n.primary_profession,
       c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings r ON t.title_id = r.title_id
JOIN name_basics n ON t.original_title = n.title
JOIN title_crew c ON t.title_id = c.title_id
WHERE t.genres = 'comedy'
AND r.average_rating > (SELECT AVG(r2.average_rating)
                         FROM title_ratings r2
                         WHERE r2.title_id = t.title_id
                         AND r2.num_votes > 100)
AND EXISTS (SELECT 1
            FROM title_principals p
            WHERE p.title_id = t.title_id
            AND p.category = 'actor'
            AND p.job = 'lead'
            AND p.characters = 'Joe Pesci')
ORDER BY r.average_rating DESC