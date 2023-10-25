SELECT t.* FROM title AS t INNER JOIN
name_basics as n ON t.titleID = n.primaryMovie AND n.birthYear < 1980