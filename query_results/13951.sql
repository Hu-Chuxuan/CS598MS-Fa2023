SELECT * FROM title_ratings WHERE (titleType = "Movie") AND ((startYear BETWEEN @StartYear AND @EndYear)) AND (@Genre IN (SELECT Genre from title_genres WHERE MovieId=movieID)) ORDER BY Average Rating DESC LIMIT 5