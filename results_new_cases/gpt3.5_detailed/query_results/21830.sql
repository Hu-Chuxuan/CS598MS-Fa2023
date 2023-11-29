SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear BETWEEN 1980 AND 2005
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Crime%')
AND tb.primaryTitle NOT IN ('Dumb and Dumber', 'Super Troopers', 'Scarface', 'Goodfellas', 'Training Day', 'Lethal Weapon')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10