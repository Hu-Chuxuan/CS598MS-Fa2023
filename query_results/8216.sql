SELECT TOP(10) * FROM
    #movieRecommendationSystem
WHERE
    (#userInput = @userInput OR (NOT EXISTS (@userPreferencedMovie))) AND
    (ISNULL(@userPreferencedMovie,'') <> '')
ORDER BY AverageRating DESC