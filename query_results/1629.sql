SELECT t.* FROM imdb.title AS t JOIN imdb.name_basics as b ON(b.primaryName = t.originalTitle AND b.ordering >=?)