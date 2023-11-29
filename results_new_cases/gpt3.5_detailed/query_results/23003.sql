SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Documentary%'
AND tb.originalTitle LIKE '%based on a true story%'
AND tb.tconst != 'tt0366629'  -- excluding Up Denali 3D
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10