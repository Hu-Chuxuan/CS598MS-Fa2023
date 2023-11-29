SELECT tb.primaryTitle AS recommended_movie, tb.startYear 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Dumb and Dumber')
OR tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Super Troopers')
AND tb.primaryTitle NOT IN ('Dumb and Dumber', 'Super Troopers', 'Scarface', 'Goodfellas', 'Training Day', 'Lethal Weapon')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5