SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Parody%')
AND tb.startYear >= 2000
AND tb.averageRating >= 6.5
AND tb.primaryTitle NOT IN ('The Naked Gun 2½: The Smell of Fear (1991)', 'La La Land (2016)', 'The Great Gatsby (2013)')
ORDER BY tr.numVotes DESC
LIMIT 5