SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters 
FROM title_basics 
JOIN name_basics ON title_basics.tconst = name_basics.nconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE title_basics.primaryTitle = 'Murder on the Orient Express (2017)' 
AND title_basics.genres IN ('Mystery', 'Crime', 'Drama') 
AND title_basics.startYear BETWEEN 2010 AND 2020 
AND title_basics.runtimeMinutes BETWEEN 90 AND 120 
AND name_basics.primaryProfession = 'Actor' 
AND title_crew.directors IN ('Kenneth Branagh', 'Rob Marshall', 'Daisy Ridley') 
AND title_principals.category = 'Lead' 
AND title_principals.job = 'Detective' 
AND title_principals.characters = 'Hercule Poirot' 
ORDER BY title_basics.startYear DESC, title_basics.runtimeMinutes DESC