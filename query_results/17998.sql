SELECT DISTINCT t.* FROM title_principals AS p JOIN title_crew AS c ON p.ordering = c.ordering AND p.nconst=c.nconst WHERE p.category='Actor' ORDER BY p.job DESC LIMIT 10 OFFSET 0