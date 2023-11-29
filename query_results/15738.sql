SELECT * FROM movie_recommendation WHERE userInput =? AND userPreferenceHistory LIKE '%[%]%' ORDER BY averageRatings DESC LIMIT 10

Expected Output Result: 
The query above returns the movie recommendation for a user who likes to watch movies outside of Marvel universe such as Ant-man and Green lantern