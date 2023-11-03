SELECT t.* FROM title_basics AS t WHERE t.titleType = "movie" AND (t.isAdult IS NULL OR NOT(t.isAdult)) ORDER BY t.startYear DESC LIMIT 1