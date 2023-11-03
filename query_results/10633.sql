SELECT * FROM (title_basics JOIN name_basics ON title_basics.movieID = name_basics.movieID AND title_basics.year >= 1980) WHERE ((name_basics.primaryProfession LIKE '%Actor%') OR (name_basics.primaryProfession LIKE '%Actress%')) AND (name_basics.birthYear BETWEEN 1930 AND 1990)