SELECT * FROM
( SELECT DISTINCT tc.*, rr.*, cnt.*, prs.*
FROM title_basic as tb JOIN
title_rating AS tr ON tr.tconst = tb.tconst AND tr.numvotes >= 6
JOIN name_basics AS nb ON nb.nconst=tb.tconst
LEFT OUTER JOIN cast as cs ON cs.tc = tb.tconst AND cs.nb = nb.nconst
WHERE NOT EXISTS (select * from title_recommendation where tr.averageRATING <=.8 )
AND cs.job IN ('actress','actor')
AND nb.primaryname LIKE '%Amy%'
AND nb.category='drama'
GROUP BY tc.tconst,tr.avgRatng,cnt.averagereview,prs.ordering ASC LIMIT 10