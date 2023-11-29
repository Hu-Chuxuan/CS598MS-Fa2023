SELECT
title_basics.title,
title_basics.primaryTitle,
title_basics.genres,
title_crew.directors,
title_principals.characters
FROM
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE
title_basics.titleType ='movie'
AND title_basics.startYear = 2017
AND title_basics.genres LIKE '%Animation%'
AND title_crew.directors = 'nm0085156'
AND title_principals.characters!= '[''Assistant''']'
AND title_principals.characters!= '[''Blacksmith''']'
ORDER BY
title_basics.primaryTitle ASC