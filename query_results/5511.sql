SELECT t.* FROM title_basics AS t WHERE t.titleType = "Movie" AND t.primaryTitle <> '' AND t.startYear <= YEAR(CURRENT_TIMESTAMP()) + 2