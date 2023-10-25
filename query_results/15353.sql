SELECT * FROM (title_basics INNER JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName AND title_basics.startYear <= 2009) WHERE ((name_basics.birthYear BETWEEN '1978' AND '1986') OR ('1987' <='birthYear' AND '1990' >= 'birthYear')) AND NOT EXISTS(SELECT * from title_rating where rating > 5)