SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%comedy%' AND title_basics.isAdult = '0' AND title_ratings.numVotes > 1000
AND title_basics.title NOT IN (SELECT title FROM title_basics WHERE nconst IN (SELECT name FROM name_basics WHERE birthYear = 1991))
AND title_basics.title NOT IN (SELECT title FROM title_basics WHERE nconst IN (SELECT name FROM name_basics WHERE deathYear = 1991))
AND title_basics.primaryTitle IN (SELECT title FROM title_basics WHERE nconst IN (SELECT name FROM name_basics WHERE primaryProfession = 'Actor'))
AND title_basics.primaryTitle NOT IN (SELECT title FROM title_basics WHERE nconst IN (SELECT name FROM name_basics WHERE primaryProfession = 'Director'))
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE numVotes > 1000 AND title NOT IN (SELECT title FROM title_basics WHERE nconst IN (SELECT name FROM name_basics WHERE primaryProfession = 'Actor')))