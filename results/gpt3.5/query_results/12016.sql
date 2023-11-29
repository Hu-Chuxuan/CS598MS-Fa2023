SELECT 
    tb2.primaryTitle AS recommended_movie,
    tr.averageRating AS rating,
    tb2.startYear AS release_year,
    tb2.genres
FROM 
    title_basics AS tb1
    JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
    JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE 
    tb1.primaryTitle = 'Paul Blart: Mall Cop (2009)' 
    AND tb2.primaryTitle != 'Paul Blart: Mall Cop (2009)' 
    AND tb2.primaryTitle NOT IN ('Paul Blart: Mall Cop 2 (2015)', 'Fist Fight (2017)', 'Why Him? (2016)')
    AND tb2.startYear <= 2009
ORDER BY 
    tr.averageRating DESC
LIMIT 5