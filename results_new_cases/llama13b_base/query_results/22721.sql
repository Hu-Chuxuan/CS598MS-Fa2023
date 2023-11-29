SELECT 
  title_basics.title,
  title_basics.primaryTitle,
  title_basics.originalTitle,
  title_basics.isAdult,
  title_basics.startYear,
  title_basics.endYear,
  title_basics.runtimeMinutes,
  title_basics.genres,
  title_ratings.averageRating,
  title_ratings.numVotes
FROM 
  title_basics 
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
  title_basics.primaryTitle LIKE '%Frozen%'  -- User input
  AND title_ratings.averageRating > (
    SELECT 
      AVG(title_ratings.averageRating)
    FROM 
      title_ratings
    WHERE 
      title_ratings.tconst IN (
        SELECT 
          tconst
        FROM 
          title_basics
        WHERE 
          title_basics.primaryTitle IN (
            SELECT 
              title_basics.primaryTitle
            FROM 
              title_basics
            WHERE 
              title_basics.isAdult = 0  -- User preference history
          )
        )
      )
    )
ORDER BY 
  title_ratings.averageRating DESC