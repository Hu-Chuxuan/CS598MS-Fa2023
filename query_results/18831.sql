SELECT t.* FROM title_basics AS t WHERE ((titleType = "Drama" OR titleType = "Comedy") AND (startYear <= 1970)) AND (endYear >= 1960)