SELECT titleID FROM title_basics WHERE titleType = 'Comedy' AND (startYear >= 2019) ORDER BY avg(averageRating)