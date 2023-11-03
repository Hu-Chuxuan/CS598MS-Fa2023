SELECT tb.* FROM imdb.title_basic AS tb JOIN imdb.name_basic AS n ON n.primaryName = tb.primaryName WHERE tb.genre LIKE '%action%' AND n.category IN ('Actor','Director') GROUP BY tb.id ORDER BY rating DESC LIMIT 1