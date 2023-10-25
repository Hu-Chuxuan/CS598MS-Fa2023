SELECT DISTINCT(title_basic.primaryTitle),
    SUM((title_rating.averageRating * title_crew.directorCount)) as directorScore,
    COUNT(*) AS votes
FROM title_basic INNER JOIN
     title_crew ON title_basic.id = title_crew.movieId AND
     title_crew.type = "Directed" AND
     title_crew.year >= TIMESTAMPDIFF('yyyy','2000-01-01',title_basic.startYear - 10) AND
     title_crew.year <= TIMESTAMPDIFF('yyyy','2000-01-01',title_basic.endYear + 10)