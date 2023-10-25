SELECT DISTINCT t.* FROM title_basics AS t JOIN name_basics ON t.titleId = n.primaryTitle WHERE n.birthYear BETWEEN? AND? GROUP BY t.id ORDER BY avg(rating)