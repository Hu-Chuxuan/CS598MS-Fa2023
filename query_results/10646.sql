SELECT DISTINCT t.* FROM imdb.title AS t JOIN imdb.name as n ON(t.primaryName=n.nConst AND n.birthyear<1900) WHERE ((t.startyear>=1976 OR t.endyear<=1976)) AND genre IN ('Action','Comedy') ORDER BY rating DESC LIMIT 10