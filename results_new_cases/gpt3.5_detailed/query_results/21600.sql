SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.startYear >= 2010 
AND tb.startYear <= 2015
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Sci-Fi%'
AND tr.averageRating >= 7.5
AND (tc.directors LIKE '%Ridley Scott%' OR tc.writers LIKE '%Drew Goddard%')
AND (tb.primaryTitle NOT LIKE '%The Martian%' AND tb.primaryTitle NOT IN ('Mission: Impossible – Ghost Protocol (2011)', 'Mission: Impossible', 'Gone Girl (2014)'))
GROUP BY tb.primaryTitle
ORDER BY tr.numVotes DESC
LIMIT 5