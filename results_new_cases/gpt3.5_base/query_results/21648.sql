SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'The Place Beyond the Pines')
AND tb.startYear >= 2010
AND tr.averageRating >= 7.5
AND nb.primaryName != 'Derek Cianfrance'
AND tb.primaryTitle NOT IN ('The Place Beyond the Pines', 'The Shawshank Redemption', 'Anchorman: The Legend of Ron Burgundy')
GROUP BY tb.primaryTitle
ORDER BY SUM(tr.numVotes) DESC
LIMIT 5