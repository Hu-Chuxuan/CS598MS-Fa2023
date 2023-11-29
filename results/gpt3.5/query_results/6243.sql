SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND (tb.primaryTitle LIKE '%Howl\'s Moving Castle%' OR tb.primaryTitle LIKE '%Brave%' OR tb.startYear IN (2012))
AND tb.primaryTitle NOT IN ('Frozen (2013)', 'Brave  (2012)', 'Finding Nemo (2003)', 'Jungle Book  (1942)', "Howl's Moving Castle ")
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10