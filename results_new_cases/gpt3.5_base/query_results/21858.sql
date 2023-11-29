SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE (tb2.primaryTitle = 'Dumb and Dumber' AND tb2.startYear = 1994)
   OR (tb2.primaryTitle = 'Superbad' AND tb2.startYear = 2007)
   AND tb1.primaryTitle NOT IN ('Dumb and Dumber', 'Superbad', 'Iron Man', 'Deadpool')
GROUP BY tb1.primaryTitle
ORDER BY COUNT(tb1.primaryTitle) DESC
LIMIT 5