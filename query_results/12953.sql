SELECT DISTINCT titleType AS 'Movie Type',
genreID as genre,
titleType as TitleType
FROM movies
WHERE titleType IN ('comedy') AND
titleType NOT IN ("action", "adventure") ORDER BY titleType ASC