SELECT * FROM (title_principals, title_basics, title_crew) WHERE 
(((director = "Will Ferrell") OR ((writer = "Will Ferrell"))) AND 
((job IN ('Actor', 'Director')))) GROUP BY director ORDER by rating DESC LIMIT 2