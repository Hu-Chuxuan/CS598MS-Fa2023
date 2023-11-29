SELECT t.title_basics.titleType, t.title_basics.primaryTitle, t.title_basics.runtimeMinutes, t.title_basics.genres, 
       c.category, c.job, c.characters
FROM title_basics t
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON c.tconst = p.tconst
WHERE t.primaryTitle = 'The Martian' AND
      c.directors = 'nm0005690' AND
      p.category = 'actor' AND
      p.job = 'Matt Damon' AND
      p.characters = 'Mark Watney'
ORDER BY t.startYear DESC, t.endYear DESC, t.runtimeMinutes DESC