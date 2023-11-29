SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0290334', 'tt1485796', 'tt2189832')  -- excluding user's historical preferences
AND tb.tconst <> 'tt1981677'