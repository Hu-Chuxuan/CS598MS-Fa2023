SELECT * FROM title_recommendation WHERE tconst =? AND (isAdult <> true OR isAdult IS NULL)