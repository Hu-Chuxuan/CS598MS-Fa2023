SELECT t.* FROM (
    SELECT * from title_basic WHERE titleType = "movie" AND (startYear >= 2018 OR endYear <= 2019)