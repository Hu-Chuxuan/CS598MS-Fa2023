SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'The Passion of the Christ (2004)') 
AND tb.tconst NOT IN ('tt0338013', 'tt0780504') 
AND tb.startYear >= 2000 
ORDER BY tr.averageRating DESC 
LIMIT 5