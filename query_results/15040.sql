SELECT DISTINCT
title_basic.*,
title_rating.*,
name_basic.*,
title_crew.*,
title_principal.*
FROM title_basics AS tb JOIN name_basics ON tb.primaryTitle = name_basic.primaryName
WHERE tb.isAdult=False AND
tb.startYear<2000 AND
tb.endYear>1970
AND EXISTS( SELECT * FROM name_basics WHERE name_basics.primaryName LIKE '%kid%' )
AND NOT EXISTS( SELECT * FROM name_basics WHERE name_basics.primaryName IN ('Mulan','Moana') OR name_basics.primaryName='Troll' )