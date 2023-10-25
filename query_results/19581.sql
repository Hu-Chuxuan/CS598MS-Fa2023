SELECT t.* FROM title_basics AS t INNER JOIN
title_rating USING(primaryTitle),
name_basics as n INNER JOIN
title_crew using (director),
title_principal AS p WHERE n.birthyear > 1970 AND n.deathyear < 2000