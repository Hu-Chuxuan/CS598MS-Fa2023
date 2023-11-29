SELECT t.title, t.startYear, t.runtimeMinutes, t.genres, c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
WHERE tr.averageRating > 8 AND
      t.genres LIKE '%mystery%' AND
      NOT EXISTS (
        SELECT 1
        FROM title_principals
        WHERE t.tconst = title_principals.tconst AND
              category = 'Actress' AND
              job = 'Lead' AND
              characters = 'Uma Thurman'
      )
ORDER BY startYear DESC, runtimeMinutes ASC