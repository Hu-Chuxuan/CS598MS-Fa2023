SELECT t.* FROM title AS t JOIN title_principals as p ON t.titleId = p.titleId WHERE p.job LIKE '%Director%' AND p.characters LIKE '%Brad Pitt%'