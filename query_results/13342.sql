SELECT tc.* FROM imdb.title_basic as tb INNER JOIN imdb.name_basic as nb ON(tb.primaryTitle = nb.primaryName) WHERE nb.birthYear < 1986 AND nb.deathYear >= 1986