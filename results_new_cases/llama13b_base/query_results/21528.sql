SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
title_basics.isAdult, 
title_basics.startYear, 
title_basics.endYear, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_ratings.averageRating, 
title_ratings.numVotes
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres = 'Horror'
AND title_ratings.averageRating > (
    SELECT 
    AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE primaryTitle = 'The Lion King (1994)' OR primaryTitle = 'Beauty and the Beast  (1992)' OR primaryTitle = 'Pocahontas  (1995)')
)
ORDER BY title_ratings.averageRating DESC