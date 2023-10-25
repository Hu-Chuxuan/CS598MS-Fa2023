SELECT * FROM (
    SELECT r.*, i.title AS imdbMovieID
       , tb.title AS titleBasics, tr.rating AS rating
     , nb.name AS nameBasics, nr.primaryRole AS role
FROM title_recommendation r
INNER JOIN titles t ON t.imdbID = r.movieID
LEFT OUTER JOIN title_ratings tr ON tr.title = t.imdbID AND tr.rating > 8
LEFT OUTER JOIN title_basics tb ON tb.imdbID = t.imdbID
LEFT OUTER JOIN names nb ON nb.imdbID = tb.imdbID AND nb.name = "Animated Film"
LEFT OUTER JOIN roles nr ON nr.role = "Character" AND nr.category = "Actor/Actress"
WHERE r.userID = :userId