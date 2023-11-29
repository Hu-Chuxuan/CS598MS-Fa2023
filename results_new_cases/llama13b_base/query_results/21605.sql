SELECT t1.title_id, t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t3.knownForTitles, t4.directors, t4.writers, t5.ordering, t5.category, t5.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
JOIN title_crew t4 ON t1.title_id = t4.tconst
JOIN title_principals t5 ON t1.title_id = t5.tconst
WHERE t1.isAdult = 0 -- exclude adult movies
AND t2.averageRating > 7.5 -- only consider movies with high ratings
AND t3.primaryProfession = 'Actor' -- only consider movies with actors as main profession
AND t4.directors = 'Michael Showalter' -- only consider movies directed by Michael Showalter
AND t5.category = 'Comedy' -- only consider comedies
AND t5.job = 'Actor' -- only consider movies with actors as main profession
AND t5.characters = 'Kumail' -- only consider movies with characters named Kumail