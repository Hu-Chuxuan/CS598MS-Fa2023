SELECT DISTINCT tc.* FROM titles AS t INNER JOIN title_crew as c ON (t.titleID = c.movieID) WHERE ((((c.job = 'Director') OR (c.job = 'Writer')) AND ((t.isAdult <> 0))))