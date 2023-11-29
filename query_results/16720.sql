SELECT t.* FROM title_basic AS t WHERE ((t.startyear <=? AND t.endyear >=?)) ORDER BY avgrating DESC LIMIT 5 OFFSET?

The above SQL query will return 5 recommended films from the IMDB database based on the inputs provided by the user in his preference history and the current date range SELECTed by him