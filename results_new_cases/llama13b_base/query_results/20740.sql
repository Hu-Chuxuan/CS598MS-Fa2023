SELECT t1.title_basics.primaryTitle, t1.title_basics.startYear, t1.title_basics.runtimeMinutes, t2.name_basics.primaryName, t3.title_crew.directors, t4.title_principals.characters
FROM title_basics t1
JOIN name_basics t2 ON t1.title_basics.primaryTitle = t2.name_basics.knownForTitles
JOIN title_crew t3 ON t1.title_basics.tconst = t3.title_crew.tconst
JOIN title_principals t4 ON t1.title_basics.tconst = t4.title_principals.tconst
WHERE t1.title_basics.genres = 'Comedy'
AND t2.name_basics.birthYear = 1980
AND t3.title_crew.directors = 'Jason Bateman'
AND t4.title_principals.characters = 'Jennifer Aniston'
AND t1.title_basics.startYear > 2010
AND t1.title_basics.runtimeMinutes < 120
ORDER BY t1.title_basics.startYear DESC, t1.title_basics.primaryTitle ASC