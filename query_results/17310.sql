SELECT * FROM (
    SELECT t.*, r.numVotes AS rating, c.category
    FROM imdb.title_basic t INNER JOIN imdb.rating_info r ON t.id = r.imdbID
        LEFT OUTER JOIN imdb.name_basic nb USING(primaryTitle)
        LEFT OUTER JOIN imdb.title_crew trc USING(director)
            LEFT OUTER JOIN imdb.title_principal prs USING(character)
                LEFT OUTER JOIN imdb.name_basics cb USING(primaryName)
                    LEFT OUTER JOIN imdb.genre g USING(genres) WHERE ((cb.startYear >= '0000-00-00') AND (g.id IN ('Action', 'Comedy', 'Crime')))