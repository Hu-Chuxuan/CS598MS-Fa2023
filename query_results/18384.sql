SELECT DISTINCT t.* FROM
    imdb.title_basic AS tb JOIN imdb.name_basic AS n ON n.primaryName = tb.title_basics.titleType AND n.primaryName=tb.title_basics.isAdult