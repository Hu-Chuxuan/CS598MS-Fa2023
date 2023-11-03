SELECT tb.* FROM imdb.title_basic AS tb JOIN imdb.name_basic AS n ON tb.primaryTitle = n.primaryName WHERE n.primaryName LIKE '%Twilight%' AND n.category IN ('Actor', 'Director') ORDER BY tb.startYear DESC LIMIT 5