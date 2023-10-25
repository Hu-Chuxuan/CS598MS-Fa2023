SELECT DISTINCT titles.titleType AS TitleType, 
titles.primaryTitle AS PrimaryTitle, 
titles.originalTitle AS OriginalTitle, 
genre.nameGenre AS Genre FROM movies.title_basics as tb INNER JOIN movies.title_ratings as tr ON tb.id = tr.tconst LEFT OUTER JOIN movies.name_basics as nb ON nb.id = tb.nconst LEFT OUTER JOIN genre ON genre.id = tb.genres ORDER BY tr.numVotes DESC LIMIT 5