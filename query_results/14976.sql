SELECT * FROM
    `title_basics` AS tb LEFT JOIN
    `name_basics` as n ON (tb.primaryTitle = n.primaryTitle),
    	LEFT JOIN
        `director_films` d ON (tb.directors = d.directedFilmIDs),
        	LEFT JOIN
            `writer_films` w ON (tb.writers = w.writtenFilmIDs)