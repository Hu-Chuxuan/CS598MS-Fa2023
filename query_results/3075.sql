SELECT * FROM (
    SELECT tc.*, nc.*, npc.*, rc.*
FROM ((title_basic tb JOIN rating_basic rb ON tb.primaryTitle = rb.titleId)) JOIN name_base na ON rb.averageRating >.8 AND na.job <> "Director" AND na.category = "Actress") AS tc
LEFT OUTER JOIN (((title_crew tc CROSS JOIN director d)) LEFT OUTER JOIN (name_base na JOIN character c ON na.characters = c.characterID) AS tc ON tc.directors LIKE "%Danny McBride%" OR tc.writers LIKE "%Jody Hill%")) AS tr
INNER JOIN (((title_principal tp CROSS JOIN actor aa)) INNER JOIN (name_base na JOIN character c ON na.characters = c.characterID) AS tp ON tp.ordering IN(1,2,3)) AS tr ON tp.actorAlias LIKE "%Ben Best%" ) as tp WHERE tp.characters NOT IN("Kristen Wiig", "Maya Rudolph")