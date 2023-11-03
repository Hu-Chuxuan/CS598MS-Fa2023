SELECT tb.* FROM imdb.title_basics as tb JOIN imdb.name_basics as n WHERE tb.genre = “family” AND n.primaryName IN ("Pixar",“Disney”,"Walt Disney Pictures") ORDER BY rating DESC LIMIT 1