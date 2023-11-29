SELECT tb.primaryTitle AS Recommended_Movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Horror%'
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('X-Men: Days of Future Past (2014)', 'X-Men  (2000)', 'The Wolverine  (2013)')
ORDER BY tr.numVotes DESC
LIMIT 5