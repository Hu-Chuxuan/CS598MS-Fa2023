SELECT * FROM
title_basic tb LEFT JOIN
name_basic nb ON(tb.id=nb.primaryTitleID),
title_rating tr RIGHT OUTER JOIN
name_basic nb ON(tr.averageRatingID = nb.primaryNameID) WHERE nb.isAdult IS NULL AND nb.startYear BETWEEN? AND? AND nb.endYear >=? ORDER BY nb.primaryProfession DESC LIMIT?