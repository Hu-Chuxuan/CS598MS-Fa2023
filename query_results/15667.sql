SELECT DISTINCT
    t.* FROM
        ( SELECT
            t.*, COUNT(*) AS cnt
         FROM
             imdb_movies t
          LEFT JOIN imdb_rating r ON t.imdbID = r.tconst WHERE r.userID='u1' AND r.numVotes > 1 GROUP BY t.startYear ) s INNER JOIN imdb_titletype t ON t.primaryTitle=s.title_id ORDER BY s.cnt DESC LIMIT 15