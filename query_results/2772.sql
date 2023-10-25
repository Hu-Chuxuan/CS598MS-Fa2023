SELECT t.* FROM title AS t JOIN name_basics AS n ON t.titleID = n.primaryMovie WHERE t.titleType IN ('movie') AND (
    SELECT count(*) FROM ratings r WHERE r.rating >= rating AND r.titleID = t.titleID
)