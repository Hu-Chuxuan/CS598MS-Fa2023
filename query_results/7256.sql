SELECT * FROM
( SELECT t.title AS "Title", r.rating AS "Average Rating", v.voteCount AS "Number of Votes"
FROM title_ratings t JOIN user_preferences u ON t.movieID = u.userPreferenceID
JOIN rating_voters r USING (voterID) WHERE r.rating > 6 AND r.rating < 8
LEFT OUTER JOIN titles_genre g USING (genreID) WHERE t.genreID IS NOT NULL