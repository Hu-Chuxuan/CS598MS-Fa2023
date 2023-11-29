SELECT
  tconst,
  primaryTitle,
  genres,
  directors,
  writers,
  nconst,
  category,
  job,
  characters
FROM
  title_basics
  JOIN title_crew ON title_basics.tconst = title_crew.tconst
  JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE
  title_basics.primaryTitle LIKE '%Reese Witherspoon%'
  AND title_principals.nconst IN (
    SELECT nconst
    FROM name_basics
    WHERE primaryName = 'Reese Witherspoon'
  )
  AND title_crew.directors IN (
    SELECT nconst
    FROM name_basics
    WHERE primaryName = 'Reese Witherspoon'
  )
  AND title_principals.category NOT IN ('self')
  AND title_principals.job NOT IN ('producer')
  AND title_ratings.averageRating > 6
ORDER BY
  title_ratings.averageRating DESC, title_principals.job ASC