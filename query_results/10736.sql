SELECT DISTINCT tconst FROM title_basic WHERE (titleType = "movie" OR titleType = "tv-series") AND ((startYear BETWEEN? AND?)) AND (endYear IS NULL)