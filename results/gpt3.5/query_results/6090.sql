SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND (tb.primaryTitle LIKE '%Disney%' OR tb.primaryTitle LIKE '%Pixar%' OR tb.genres LIKE '%Animation%')
AND (tb.primaryTitle != 'Brave' OR tb.startYear != 2012)
AND (tb.primaryTitle != 'Madagascar' OR tb.startYear != 2005)
AND (tb.primaryTitle != "Kiki's Delivery Service" OR tb.startYear != 1989)
AND (tb.primaryTitle != 'Spirited Away')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10