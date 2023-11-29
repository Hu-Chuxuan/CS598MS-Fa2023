SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tr.averageRating >= 7
AND nb.primaryName != 'Michael Douglas'
AND tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Gore%'
AND tb.startYear = 1984
AND tb.originalTitle != 'A Nightmare on Elm Street'
AND tb.primaryTitle NOT IN ('Saw', 'A Nightmare on Elm Street')
GROUP BY tb.primaryTitle
ORDER BY tr.numVotes DESC
LIMIT 1