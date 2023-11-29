SELECT tb.primaryTitle AS recommended_movie_title, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2016
AND tb.primaryTitle NOT IN ('Jumanji (2017)', 'Central Intelligence (2016)', 'Barbershop: The Next Cut (2016)', 'Girls Trip (2017)', 'Early Man')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5