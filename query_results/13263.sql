SELECT * FROM titles WHERE (titleType = 'Movie' OR titleType = 'TV Episode') AND ((startYear <=?) AND (endYear >=?)) AND (averageRating > 6)