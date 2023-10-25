SELECT t.* FROM (
    SELECT DISTINCT t.* from title_basics AS t JOIN cast_principals AS c ON t.titleID = c.castingID