SELECT t.title_id, t.title, t.primary_title, t.original_title, t.genres, t.runtime_minutes, t.start_year, t.end_year, t.is_adult, t.average_rating, t.num_votes, n.nconst, n.primary_name, n.birth_year, n.death_year, n.primary_profession, n.known_for_titles
FROM title_basics t
JOIN name_basics n ON t.primary_title = n.primary_name
WHERE t.genres = 'Comedy' AND t.runtime_minutes > 60 AND t.start_year = 2000 AND t.end_year = 2010
AND n.primary_profession = 'actor'
AND n.known_for_titles = 'Pineapple Express (2008)'
ORDER BY t.average_rating DESC, t.num_votes DESC