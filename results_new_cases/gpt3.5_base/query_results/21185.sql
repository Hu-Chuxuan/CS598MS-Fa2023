SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Stoner%'
AND tb.startYear < 2008
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('Pineapple Express', 'How High', 'The Incredibles', 'Wreck-It Ralph')
ORDER BY tr.averageRating DESC
LIMIT 5