SELECT * FROM
    ('title_basics','title_crew','title_ratings') AS s ON
        s.tconst = tb.tconst AND s.category='director' OR
                      s.job IN ('actor', 'producer','screenplay')