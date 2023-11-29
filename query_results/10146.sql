SELECT DISTINCT t.* FROM (
    SELECT * from title_basic WHERE isAdult = 0 AND titleType='movie'