SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear >= 1990
AND tb.startYear < 2000
AND tb.tconst != 'tt0137523'  -- Excluding Fight Club
ORDER BY tr.averageRating DESC
LIMIT 5