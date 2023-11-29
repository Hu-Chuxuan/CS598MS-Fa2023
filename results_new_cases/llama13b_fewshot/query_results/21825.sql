SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Super Troopers' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Super Troopers 2' LIMIT 1)) > 0
AND EXISTS (
    SELECT 1
    FROM name_basics nb
    WHERE nb.primaryName = 'Reese Witherspoon'
      AND EXISTS (
          SELECT 1
          FROM title_principals tp
          WHERE tp.nconst = nb.nconst
            AND tp.category = 'actor'
      )
)