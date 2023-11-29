SELECT 
    tb1.primaryTitle AS recommended_movie
FROM 
    title_basics AS tb1
    INNER JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE 
    tb2.primaryTitle IN ('Pineapple Express', 'Super Troopers')
    AND tb1.primaryTitle NOT IN ('Groundhog Day', 'Sixteen Candles', 'Despicable Me 2', 'Super Troopers', 'The Incredibles', 'Say Anything...', 'Minions', 'Super Troopers 2', 'Despicable Me 3', 'Despicable Me')
    AND tb1.startYear > 2000
ORDER BY tb1.averageRating DESC
LIMIT 5