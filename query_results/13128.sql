SELECT t.* FROM
( SELECT tb.*
     , tr.*
     , nr.*
     , nc.*
      --, tc.*
   WHERE tb.titleType = "movie" AND
         tc.category IN ('actor', 'director') AND
       (tb.startYear <= YEAR(CURRENT DATE)) AND
        tc.job <> '' ) AS t
LEFT JOIN title_ratings ON t.tconst = title_ratings.tconst
INNER JOIN name_basics ON t.primaryName = name_basics.primaryName
WHERE t.averageRating >= 7/10