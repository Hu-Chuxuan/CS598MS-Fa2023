SELECT tb.primaryTitle AS recommended_movie,
    tr.averageRating AS average_rating,
    tb.startYear AS release_year
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
    AND tb.startYear >= 1980
    AND tb.startYear <= 1989
    AND tb.primaryTitle NOT IN ('Children of the Corn (1984)', 'WALL-E (2008)', 'When Harry Met Sally... (1989)', 'Pretty in Pink (1986)', 'An Officer and a Gentleman', 'The Witch (2015)')
ORDER BY tr.averageRating DESC
LIMIT 5