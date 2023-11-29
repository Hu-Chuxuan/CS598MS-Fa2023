SELECT tb.primaryTitle AS Recommended_Movie, 
       tb.startYear AS Release_Year, 
       AVG(tr.averageRating) AS Average_Rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%' 
      AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Romance%')
      AND tb.startYear > 2013 -- to recommend newer movies
      AND tb.primaryTitle NOT IN ('The Matrix (1999)', 'The Matrix Revolutions (2003)', 'About Time  (2013)') -- to exclude already watched movies
GROUP BY tb.primaryTitle, tb.startYear
ORDER BY AVG(tr.averageRating) DESC
LIMIT 5