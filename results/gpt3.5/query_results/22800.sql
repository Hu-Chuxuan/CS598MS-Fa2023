SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear < 1960
AND genres LIKE '%Thriller%'
AND tconst NOT IN ('tt0054215', 'tt0053125')
ORDER BY averageRating DESC
LIMIT 5