SELECT tc.* FROM titles AS t INNER JOIN name_basics NB ON t.titleID = NB.primaryTitle WHERE t.titleType = "movie" AND t.isAdult!= 1 ORDER BY rating DESC LIMIT 10