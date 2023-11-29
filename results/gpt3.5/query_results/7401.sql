SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE (tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Family%')
AND (tb.primaryTitle LIKE '%Jumanji%' OR tb.primaryTitle LIKE '%Cinderella%')
AND tb.startYear >= 2010
AND nb.primaryName IN ('David Fynn', 'Shameik Moore', 'Jack Black', 'Dwayne Johnson', 'Karen Gillan', 'Bobby Cannavale', 'Lily James', 'Cate Blanchett')
GROUP BY tb.tconst
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10