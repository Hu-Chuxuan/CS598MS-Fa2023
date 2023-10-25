SELECT DISTINCT TOP 10 movies.* FROM
title_basics tb LEFT JOIN
name_basics nb ON tb.primaryTitle = nb.primaryName
LEFT OUTER JOIN
title_rating tr RIGHT OUTER JOIN
title_crew tc ON tb.tconst=tc.tconst AND nb.nconst IN ('actress','actor')
WHERE tb.startYear > 1980 OR tb.endYear < 1990
AND EXISTS(SELECT * from cast WHERE actors.job='director' AND movies.movieID=cast.movieID)
AND NOT EXISTS(SELECT * from crew WHERE crew.job LIKE '%editor%' AND movies.movieID=crew.movieID)