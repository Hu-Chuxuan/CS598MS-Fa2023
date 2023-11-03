SELECT DISTINCT (title_rating.primaryTitle) AS 'Movie Title',
(title_rating.averageRating * 10)/numvoters As "Average Rating" FROM title_ratings JOIN title_crew ON title_crew.director = title_rating.director AND title_rating.movie = title_crew.movie WHERE title_crews.director IN ('Steven Soderbergh','Martin Scorsese') OR title_crews.writer IN('Quentin Tarantino', 'Robert Rodriguez')