SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating, title_principals.category, title_crew.directors, title_crew.writers
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
WHERE title_basics.isAdult = '0' AND title_basics.startYear > 2000 AND title_basics.endYear < 2020 AND title_ratings.numVotes > 1000
AND title_principals.category NOT IN ('ape')
AND title_crew.directors NOT IN ('Franklin J. Schaffner')
AND title_crew.writers NOT IN ('Joe Eszterhas')
AND title_basics.primaryTitle NOT IN ('High School Musical 2', 'High School Musical 3: Senior Year (2008)', 'Where the Red Fern Grows  (1974)', 'High School Musical ')
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC
LIMIT 5