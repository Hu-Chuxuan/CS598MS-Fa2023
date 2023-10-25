SELECT * FROM 
( SELECT t.*, r.*, c.*, p.*, n.* 
FROM titles AS t INNER JOIN ratings AS r ON t.titleID = r.titleID  
INNER JOIN name_basic as nb ON t.titleID = nb.titleID    
LEFT OUTER JOIN crew AS cr ON t.titleID=cr.titleID AND cr.job='director'   
LEFT OUTER JOIN principal AS prntc ON t.titleID = prntc.titleID AND prntc.category='character'      LEFT OUTER JOIN title_crew AS crew ON t.titleID = crew.titleID AND crew.job IN ('writer')        RIGHT OUTER JOIN name_basics AS na ON t.titleID = na.nameID WHERE na.primaryName LIKE '%horror%' OR na.primaryName LIKE '%thriller%' ORDER BY rating DESC LIMIT 6