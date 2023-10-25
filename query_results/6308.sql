SELECT * FROM title WHERE
(titleType = 'Movie' AND averageRating >= 7) OR
((directors LIKE '%John Landis%' OR actors LIKE '%Eddie Murphy%') AND averageRating > 6)