SELECT * FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Action%'
AND (
    (directors LIKE '%James%') OR 
    (writers LIKE '%James%') OR 
    (name_basics.primaryName LIKE '%James%')
)
AND (
    (directors LIKE '%Furious%') OR 
    (writers LIKE '%Furious%') OR 
    (name_basics.primaryName LIKE '%Furious%')
)
AND (
    (directors LIKE '%Marvel%') OR 
    (writers LIKE '%Marvel%') OR 
    (name_basics.primaryName LIKE '%Marvel%')
)
AND (
    (title_ratings.averageRating > 7) AND 
    (title_ratings.numVotes > 1000)
)
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC