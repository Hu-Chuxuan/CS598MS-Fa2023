SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2019
AND tb.genres NOT LIKE '%Action%'
AND tb.genres NOT LIKE '%Thriller%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.genres NOT LIKE '%Crime%'
AND tb.primaryTitle NOT IN ('Legally Blonde (2001)', 'Game Night (2018)')
AND nb.primaryProfession LIKE '%actress%'
GROUP BY tb.primaryTitle
ORDER BY tb.numVotes DESC
LIMIT 5