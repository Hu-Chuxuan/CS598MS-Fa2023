SELECT * FROM (
    SELECT TOP(8)
        t.*, r.*
    FROM   title_basics AS tb
            INNER JOIN title_ratings as tr ON tb.titleId = tr.titleId
            LEFT OUTER JOIN name_basics AS nm ON tb.titleId = nm.movieId
            CROSS APPLY (
                VALUES ('director'), ('writer')
            ) v(job)(nm.name, nm.primaryName, nm.birthYear, nm.deathYear, nm.category, nm.characters)