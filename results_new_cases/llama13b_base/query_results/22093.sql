SELECT t.title_id, t.title, t.original_title, t.start_year, t.genres, t.runtime_minutes, c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings tr ON t.title_id = tr.title_id
JOIN name_basics n ON t.original_title = n.primary_name
JOIN title_crew c ON t.title_id = c.title_id
WHERE t.start_year = 2017 AND t.genres = 'Action' AND t.runtime_minutes > 120
AND tr.average_rating > 7 AND tr.num_votes > 10000
AND n.birth_year = 1980 AND n.death_year = NULL
AND c.category = 'Actor' AND c.job = 'Lead'
AND c.characters LIKE '%driver%'
ORDER BY t.start_year DESC, t.title ASC