SELECT * FROM (
SELECT title_basics.title_id, title_basics.title, title_basics.original_title, title_basics.start_year, title_basics.end_year, title_basics.runtime_minutes, title_basics.genres, title_ratings.average_rating, title_ratings.num_votes, name_basics.primary_name, name_basics.birth_year, name_basics.death_year, name_basics.primary_profession, name_basics.known_for_titles, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.title_id = title_ratings.title_id
JOIN name_basics ON title_basics.title_id = name_basics.title_id
JOIN title_crew ON title_basics.title_id = title_crew.title_id
JOIN title_principals ON title_basics.title_id = title_principals.title_id
WHERE title_basics.genres LIKE '%comedy%'
AND title_ratings.average_rating > 6.5
AND title_principals.category = 'actors'
AND title_principals.job = 'actor'
AND title_principals.characters ='main'
) AS recommended_titles
WHERE recommended_titles.title LIKE '%Pineapple Express%' OR recommended_titles.title LIKE '%Super Troopers%'