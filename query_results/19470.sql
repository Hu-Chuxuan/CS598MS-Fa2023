SELECT DISTINCT tc.* FROM imdb.title_basic AS tb INNER JOIN imdb.name_basic as nb ON tb.nconst=nb.nconst WHERE nb.primaryName='Elizabeth Banks'