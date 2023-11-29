SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('It  (2017)', 'Resident Evil  (2002)')
ORDER BY tr.averageRating DESC
LIMIT 10