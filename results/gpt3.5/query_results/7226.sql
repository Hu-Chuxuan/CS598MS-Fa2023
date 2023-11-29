SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('The Proposal', 'The Bounty Hunter', 'Maid in Manhattan')
AND tb.startYear <= 2022
ORDER BY tr.averageRating DESC
LIMIT 1