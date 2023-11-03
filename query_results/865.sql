SELECT DISTINCT tc.* FROM imdb.title_basic AS tb JOIN imdb.name_basic as nb ON tb.primaryTitle = nb.primaryName WHERE tb.titleType IN ('movie', 'tv') AND tb.isAdult!= "TRUE" ORDER BY tb.startYear DESC LIMIT 3