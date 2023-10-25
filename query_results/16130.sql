SELECT * FROM title_recommendation WHERE
title_id = $movieId AND
(genes LIKE '%[%$userInput%]%' OR categories LIKE '%[%$userInput%]%)
AND (primaryName LIKE '[%$userPreferanceHistory[]%]' OR birthYear >= $yearStart AND birthYear <= $yearEnd)