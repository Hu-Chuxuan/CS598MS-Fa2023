SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tr.averageRating >= 7
AND (tb.primaryTitle = 'The Greatest Showman' OR tb.primaryTitle = 'The Sound of Music')
AND tb.tconst != 'tt0059742'
ORDER BY tr.averageRating DESC