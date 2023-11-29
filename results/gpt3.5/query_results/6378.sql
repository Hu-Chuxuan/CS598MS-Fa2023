SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Thriller%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0081505', 'tt1825683') -- exclude 'The Shining' and 'Black Panther'
ORDER BY tr.averageRating DESC
LIMIT 5