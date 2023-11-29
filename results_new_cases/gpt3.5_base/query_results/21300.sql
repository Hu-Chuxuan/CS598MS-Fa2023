SELECT tb.primaryTitle AS recommended_movie, 
       tb.startYear AS release_year, 
       tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 1995
AND tb.startYear <= 2005
AND tb.primaryTitle NOT IN ('The Big Sick', 'Tully', 'The Shawshank Redemption', 'Chasing Amy')
ORDER BY tr.averageRating DESC
LIMIT 5