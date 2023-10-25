SELECT * FROM (SELECT tb.*, r.*, nr.*, c.*
FROM title_basic as tb JOIN title_rating as r ON tb.titleID = r.titleID
JOIN title_name AS n ON tb.titleID=n.titleID
LEFT OUTER JOIN title_crew AS TC ON tb.titleID = TC.titleID
LEFT OUTER JOIN title_principal AS P ON tb.titleID = P.titleID) AS x LEFT OUTER JOIN name_rating AS NR ON X.primaryName = NR.primaryName AND NR.numVote >0 WHERE X.genre IN ('Comedy', 'Drama') GROUP BY X.genre ORDER BY RAND() LIMIT 6