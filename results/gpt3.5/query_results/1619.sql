SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.startYear >= 1990
AND tb.titleType = 'movie'
AND tr.averageRating >= 7.5
AND nb.primaryName LIKE '%Patrick Dempsey%'
AND tb.tconst NOT IN ('tt0119468', 'tt0455590', 'tt0289992', 'tt0492956', 'tt0361191', 'tt0889573', 'tt0150377')
AND tb.primaryTitle != 'Kiss the Girls'
GROUP BY tb.primaryTitle
ORDER BY COUNT(tb.tconst) DESC
LIMIT 5