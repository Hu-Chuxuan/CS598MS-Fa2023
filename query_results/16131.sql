SELECT t.* FROM title AS t JOIN name_basics AS n ON t.primaryName = n.primaryName WHERE n.birthYear >= '1980' AND n.deathYear <= '2020'