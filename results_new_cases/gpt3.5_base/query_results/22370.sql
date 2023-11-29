SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear >= 2010
AND tb.originalTitle IN ('It', 'Sweeney Todd: The Demon Barber of Fleet Street', 'Mama')
ORDER BY tr.averageRating DESC
LIMIT 5