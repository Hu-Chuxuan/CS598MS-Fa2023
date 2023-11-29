SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 2005
AND tb.tconst NOT IN ('tt0407304', 'tt0181689', 'tt0119116', 'tt0234215', 'tt0046534')