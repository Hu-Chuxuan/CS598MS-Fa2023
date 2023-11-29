SELECT t.title_id, t.primary_title, t.genres, t.runtime_minutes, t.average_rating, t.num_votes, n.name, n.birth_year, n.death_year, n.primary_profession, n.known_for_titles
FROM title_basics t
JOIN name_basics n ON t.primary_title = n.primary_name
WHERE t.primary_title LIKE '%Man%' AND t.genres LIKE '%Drama%' AND t.runtime_minutes > 90
AND n.birth_year = 1950 AND n.death_year IS NULL AND n.primary_profession = 'actor'
AND NOT EXISTS (SELECT 1 FROM title_ratings tr WHERE tr.title_id = t.title_id AND tr.average_rating > 7)
ORDER BY t.average_rating DESC, t.num_votes DESC