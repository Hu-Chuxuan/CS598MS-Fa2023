SELECT tb.primaryTitle AS recommended_movie, 
       tb.startYear AS release_year,
       tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE (nb.primaryName = 'Meg Ryan' OR nb.primaryName = 'Tom Hanks')
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('City of Angels', 'Dumb and Dumber', 'Pretty Woman')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5