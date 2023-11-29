SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Game Night')
AND tb.startYear >= 2010
AND tr.averageRating >= 7
AND (tb.primaryTitle NOT IN ('Game Night', 'Eragon', 'Harry Potter and the Philosopher\'s Stone'))
ORDER BY tr.averageRating DESC
LIMIT 5