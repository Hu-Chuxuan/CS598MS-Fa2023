SELECT * FROM title_rating WHERE avg(averageRatings) > 7 AND (titleType='Movie' OR genre IN ('Action','Horror'))