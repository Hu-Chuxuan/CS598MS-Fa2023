SELECT * FROM (title_principals INNER JOIN title_crew ON title_crews.job = title_principals.category WHERE title_principals.nconst = "Julia" AND title_crew.director IN ('Garry Marshall', 'Mike Nichols') ORDER BY RAND() LIMIT 5