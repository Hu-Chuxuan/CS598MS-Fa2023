SELECT t.* FROM title_basics AS t JOIN name_basics AS n ON t.primaryTitle = n.primaryName WHERE n.birthYear >= 1976 AND n.deathYear < 2018