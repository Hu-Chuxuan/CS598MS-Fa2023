SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT LIKE '%Love Story (1970)%'
AND tb.primaryTitle NOT IN ('WALL-E (2008)', 'When Harry Met Sally... (1989)', 'Pretty in Pink (1986)', 'An Officer and a Gentleman', 'The Witch  (2015)')
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5