SELECT t.* FROM title AS t WHERE t.titleType = "movie" AND t.startYear BETWEEN $yearStart && $yearEnd