SELECT DISTINCT
    p.primaryTitle AS Movie Title,
    c.category AS Job Category,
    mr.averageRating AS Rating Score,
    d.job DESCRIPTION AS Director Description,
    w.job DESCRIPTION AS Writer Description
FROM title_ratings r INNER JOIN title_principals pr ON r.tconst = pr.tconst AND r.ordering IN (1,2,...) -- r1, r2,..., r10,..., r90
INNER JOIN title_crew cr ON r.tconst=cr.tconst AND r.ordering BETWEEN 10 AND 100
LEFT OUTER JOIN title_basics bb ON bb.nconst=pr.nconst AND bb.tconst=r.tconst AND bb.startYear>=1980 -- left join to get name info from title_basics
LEFT OUTER JOIN title_basics cb ON cb.nconst=d.nconst AND cb.tconst=r.tconst AND cb.startYear>=1980
LEFT OUTER JOIN title_basics cc ON cc.nconst=w.nconst AND cc.tconst=r.tconst AND cc.startYear>=1980
WHERE bb.isAdult=0 OR bb.endYear IS NULL
AND ((bb.genre LIKE '%sci%fi%' OR bb.genre LIKE '%horror%') AND NOT (cc.genre LIKE %'romantic%' OR cc.genre LIKE %'comedic%'))
ORDER BY RANK() OVER (PARTITION BY p.primaryTitle ORDER BY MOD(c.category,2), d.job, w.job)