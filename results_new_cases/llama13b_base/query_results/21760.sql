SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t3.category, t3.job, t3.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
WHERE t1.genres = 'Science Fiction'
AND t2.averageRating > (SELECT AVG(t4.averageRating) FROM title_ratings t4 WHERE t4.tconst IN (SELECT t5.tconst FROM title_basics t5 WHERE t5.titleType = 'Sequel' AND t5.originalTitle = 'The Matrix'))
AND NOT EXISTS (SELECT 1 FROM title_principals t6 WHERE t6.tconst = t1.tconst AND t6.category = 'Actress' AND t6.job = 'Keanu Reeves')
AND NOT EXISTS (SELECT 1 FROM title_principals t7 WHERE t7.tconst = t1.tconst AND t7.category = 'Actor' AND t7.job = 'Laurence Fishburne')
AND NOT EXISTS (SELECT 1 FROM title_principals t8 WHERE t8.tconst = t1.tconst AND t8.category = 'Director' AND t8.job = 'The Wachowskis')
ORDER BY t1.averageRating DESC, t3.primaryName ASC