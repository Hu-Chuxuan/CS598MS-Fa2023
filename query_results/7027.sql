SELECT DISTINCT t.* FROM title_basics AS t INNER JOIN title_rating ON (title_basic.titleID = title_rating.titleID)