SELECT * FROM title WHERE genre = "Sci-fi" AND userPreferredMovie IN ('Star Wars','Taken') OR userPreferedGenre IN ("Action", "Drama") ORDER BY rating DESC LIMIT 3