SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Ghost%'
AND tb.primaryTitle != 'The Amityville Horror'
ORDER BY tr.averageRating DESC