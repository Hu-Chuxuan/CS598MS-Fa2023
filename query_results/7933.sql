SELECT t.* FROM title AS t JOIN name as n ON t.primaryName = n.nameID WHERE ((titleType='movie') AND (job in ('Actor','Actress')))