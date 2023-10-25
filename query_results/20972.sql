SELECT * FROM ( SELECT tb.*, tc.*, nb.*, tcr.*, np.*
FROM titles AS tb LEFT JOIN title_ratings AS tc ON tb.titleID = tc.titleID
LEFT JOIN names AS nb ON tb.nameID=nb.nameID
LEFT JOIN title_crew AS tcr ON tb.titleID=tcr.titleID AND tcr.job='director' OR tcr.job='writer'
LEFT JOIN title_principals AS np ON tb.titleID=np.titleID WHERE ((tb.genre IN ('Action', 'Comedy') OR tc.averageRating>8)) AND tb.startYear>=1970 GROUP BY tb.titleID )
WHERE tb.primaryProfession="Directing" ORDER BY tb.numVotes DESC LIMIT 1