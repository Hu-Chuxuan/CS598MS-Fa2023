SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'The Purge'
AND tb.titleType = 'movie'
AND tr.averageRating >= 7
AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Horror%')
AND tb.primaryTitle NOT IN ('The President  (2014)', 'Taken  (2008)', 'Resident Evil  (2002)')
AND tb.startYear >= 2000
AND tb.isAdult = 0
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10