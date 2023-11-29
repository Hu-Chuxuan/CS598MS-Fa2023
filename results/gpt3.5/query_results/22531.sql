SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND nb.primaryProfession LIKE '%actress%'
AND tb.primaryTitle != 'Thor: Ragnarok (2017)'
AND tr.averageRating >= 7
AND tr.numVotes > 1000
AND nb.primaryName NOT IN ('Chris Hemsworth', 'Tom Hiddleston', 'Cate Blanchett')
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC
LIMIT 5