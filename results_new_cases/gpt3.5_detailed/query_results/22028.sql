SELECT tb.primaryTitle AS Recommended_Movie, tr.averageRating AS Average_Rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' 
    AND tb.genres LIKE '%Comedy%'
    AND tb.startYear > 2007
    AND tb.primaryTitle NOT IN ('Knocked Up (2007)', 'Joe Dirt (2001)', "Daddy's Home (2015)")
ORDER BY tr.averageRating DESC
LIMIT 5