SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Ghost%'
   OR tb.genres LIKE '%Afterlife%'
   OR tb.genres LIKE '%Supernatural%'
   OR tb.primaryTitle LIKE '%Ghost%'
   OR tb.primaryTitle LIKE '%Afterlife%'
   OR tb.primaryTitle LIKE '%Supernatural%'
   AND tb.titleType = 'movie'
   AND tb.startYear IS NOT NULL
   AND tr.numVotes > 100
   AND tb.primaryTitle NOT IN ('The Five People You Meet in Heaven', 'What Dreams May Come  (1998)', 'Ghost  (1998)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10