SELECT tb.primaryTitle AS recommended_movie, tb.startYear
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' AND tb.genres LIKE '%Biography%'
AND tb.startYear >= 2000
AND tr.averageRating >= 7.5
AND tb.primaryTitle NOT IN ('The Sixth Sense (1999)', 'The Shining (1980)', 'Picnic at Hanging Rock (1975)', 'The Others (2001)', "Bram Stoker's Dracula (1992)", 'Phantom Thread (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5