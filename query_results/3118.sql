SELECT * FROM movies WHERE (title_basics.primaryTitle LIKE '%dumb%' OR
                            title_basics.originalTitle LIKE '%dumb%') AND
                (title_basics.startYear BETWEEN 1987 AND 2018)