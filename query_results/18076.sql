SELECT * FROM (title_ratings) WHERE ((isAdult = false)) AND ((startYear > '0') AND ((endYear < '0'))) AND ((averageRating >= '8')) GROUP BY genre