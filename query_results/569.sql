SELECT * FROM title_basics WHERE (titleType = "Action" OR titleType = "Comedy") AND ((startYear > :yearStart OR startYear < :yearEnd)) AND (endYear >= :yearStart || endYear <= :yearEnd)