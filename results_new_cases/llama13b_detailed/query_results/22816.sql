SELECT title_basics.title_id, title_basics.primary_title, title_basics.genres, name_basics.name, title_crew.directors, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.primary_title = name_basics.primary_name
JOIN title_crew ON title_basics.title_id = title_crew.tconst
JOIN title_principals ON title_basics.title_id = title_principals.tconst
WHERE title_basics.genres LIKE '%Family%' AND title_principals.category = 'actor' AND name_basics.primary_name IN (SELECT name_basics.primary_name FROM name_basics WHERE name_basics.known_for_titles LIKE '%The Greatest Showman%')
AND title_ratings.average_rating > (SELECT title_ratings.average_rating FROM title_ratings WHERE title_ratings.title_id IN (SELECT title_basics.title_id FROM title_basics WHERE title_basics.primary_title = 'The Karate Kid') AND title_ratings.num_votes > 100)
ORDER BY title_ratings.average_rating DESC