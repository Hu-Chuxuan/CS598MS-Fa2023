SELECT 
  t.title, 
  t.titleType, 
  t.primaryTitle, 
  t.originalTitle, 
  t.isAdult, 
  t.startYear, 
  t.endYear, 
  t.runtimeMinutes, 
  t.genres, 
  n.primaryName, 
  n.birthYear, 
  n.deathYear, 
  n.primaryProfession, 
  n.knownForTitles, 
  c.category, 
  c.job, 
  c.characters
FROM 
  title_basics t 
  JOIN name_basics n ON t.primaryTitle = n.primaryTitle 
  JOIN title_crew c ON t.tconst = c.tconst 
WHERE 
  t.titleType ='movie' AND 
  t.isAdult = 0 AND 
  t.startYear = 2018 AND 
  t.endYear = 2018 AND 
  t.genres LIKE '%book%' AND 
  n.primaryProfession = 'actor' AND 
  n.knownForTitles LIKE '%Avengers: Infinity War (2018)%' AND 
  c.category = 'actor' AND 
  c.job = 'actress' AND 
  c.characters LIKE '%Black Widow%'
ORDER BY 
  t.title ASC