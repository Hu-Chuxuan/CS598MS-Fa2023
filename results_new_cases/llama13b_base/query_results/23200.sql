SELECT * FROM (
SELECT t.title_id, t.title, t.genres, t.runtimeMinutes, t.startYear, t.endYear, t.averageRating, t.numVotes, 
       n.name, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles,
       c.category, c.job, c.characters
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.directors = c.directors OR t.writers = c.writers
WHERE t.title LIKE '%The Purge%'
) AS recommended_movies
WHERE NOT EXISTS (
  SELECT 1 FROM title_ratings
  WHERE user_id = (SELECT u.id FROM users u WHERE u.username = 'user_input')
  AND title_id = recommended_movies.title_id
)
ORDER BY recommended_movies.averageRating DESC, recommended_movies.numVotes DESC