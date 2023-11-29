SELECT * FROM ( SELECT t.*, (
    CASE WHEN t.category = 'actress' THEN COUNT(*) OVER () AS actorCount ELSE NULL END ) AS actressCount,
                   (CASE WHEN t.category = 'actor' THEN COUNT(*) OVER () AS actressCount ELSE NULL END)AS actorCount,
            (CASE WHEN t.job <> '' AND EXISTS (SELECT 1 FROM  title_principals WHERE titleId=t.id AND category='character') THEN TRUE ELSE FALSE END) AS IsCharacter,
            (CASE WHEN t.job <> '' AND EXISTS (SELECT 1 FROM  title_principals WHERE titleId=t.id AND category='character') THEN COUNT(*) OVER() AS CharacterCountELSE 0 END),
             IFNULL((COUNT(*) OVER () - CHARACTERCOUNT)/ACTORCOUNT*100,'NA') AS RecommendationScore
FROM     title_basics t JOIN  title_crew c ON c.titleId = t.id
WHERE   t.isAdult IN ('true','false')