SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE 
    tb2.primaryTitle IN ('Pineapple Express', 'Super Troopers')
    AND tb1.titleType = 'movie'
    AND tb1.startYear > 2000
    AND tb1.primaryTitle NOT IN 
        ('Groundhog Day', 'Sixteen Candles', 'Despicable Me 2', 
        'Super Troopers', 'The Incredibles', 'Say Anything...', 
        'Minions', 'Super Troopers 2', 'Despicable Me 3', 'Despicable Me')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5