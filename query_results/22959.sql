SELECT * FROM movies WHERE userPreferedMovies = $userInput AND userPreferredMovies IN ($userHistory)