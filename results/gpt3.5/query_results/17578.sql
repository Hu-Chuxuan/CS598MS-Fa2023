SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear > 2002
AND tb.primaryTitle NOT IN ('The Transporter (2002)', 'Taken  (2008)', 'Tomorrowland  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 5