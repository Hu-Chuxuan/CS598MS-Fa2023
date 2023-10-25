SELECT DISTINCT * FROM (title_rating INNER JOIN
    title_crew ON title_rating.tconst = title_crew.tconst AND title_crew.directorID IN (1786)) INNER JOIN
    title_basics AS tb USING(tconst)