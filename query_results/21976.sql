SELECT t.* FROM ( SELECT t.*,
                        COUNT(*) OVER () AS cnt
                from imdb_movies m JOIN imdb_titleratings r ON m.imdbID = r.tmDBid
                WHERE m.startyear BETWEEN? AND?  
            GROUP BY m.titleId ) t INNER JOIN imdb_names n ON t.primaryMovie = n.imdbId ORDER BY RAND() LIMIT 10