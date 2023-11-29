SELECT t.title_basics.primaryTitle, t.title_basics.startYear, t.title_basics.runtimeMinutes, 
       t.title_ratings.averageRating, t.title_crew.directors, t.title_principals.characters
  FROM title_basics t
  JOIN title_ratings tr ON t.title_basics.tconst = tr.tconst
  JOIN name_basics n ON t.title_basics.primaryName = n.nconst
  JOIN title_crew c ON t.title_basics.tconst = c.tconst
  JOIN title_principals p ON t.title_basics.tconst = p.tconst
 WHERE t.genres LIKE '%Fantasy%' AND t.genres LIKE '%Comedy%'
   AND t.title_ratings.averageRating > 7
   AND t.title_principals.characters LIKE '%goofy%'
   AND NOT EXISTS (SELECT 1 FROM title_basics t2 WHERE t2.tconst = t.tconst AND t2.startYear < 2000)
 GROUP BY t.title_basics.primaryTitle, t.title_basics.startYear, t.title_basics.runtimeMinutes, 
          t.title_ratings.averageRating, t.title_crew.directors, t.title_principals.characters
 HAVING COUNT(DISTINCT t.title_basics.primaryName) > 1
 ORDER BY t.title_basics.startYear DESC, t.title_basics.primaryTitle ASC