SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres IN (
    SELECT genres 
    FROM title_basics 
    WHERE primaryTitle IN ('8 Heads in a Duffel Bag (1997)', 'The Trip to Italy (2014)')
)
AND titleType = 'movie'
AND startYear >= 1990
AND averageRating >= 6
ORDER BY averageRating DESC 
LIMIT 10