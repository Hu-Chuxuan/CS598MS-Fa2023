SELECT DISTINCT(movies).movieID FROM movies INNER JOIN name_basics ON movies.titleID = name_basics.titleID AND movies.primaryName = name_basics.nameID WHERE movies.isAdult=false