SELECT tb.* FROM imdb.title_basic as tb INNER JOIN imdb.name_basic AS nb ON tb.primaryName = nb.primaryName WHERE tb.isAdult=true AND tb.genre IN ('Horror','Thrillers') ORDER BY rating DESC LIMIT 3