SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%'
AND tb.startYear > 2012
AND (tb.primaryTitle NOT IN ('Zootopia', 'The Incredibles', 'Wreck-It Ralph') 
AND tb.primaryTitle NOT IN ('Pineapple Express', 'Girls Trip', 'Game Night', 'How High'))
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5