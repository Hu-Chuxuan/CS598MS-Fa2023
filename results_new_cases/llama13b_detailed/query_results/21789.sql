SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_principals p ON t.tconst = p.tconst
WHERE n.primaryProfession LIKE '%actress%' AND
      t.primaryTitle LIKE '%Rachel McAdams%' AND
      p.category = 'actor'
ORDER BY t.startYear DESC