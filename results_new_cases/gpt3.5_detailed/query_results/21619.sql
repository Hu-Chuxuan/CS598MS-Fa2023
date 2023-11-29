SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Drama%')
AND tb.tconst != 'tt0267626' -- Exclude the input movie
AND tb.primaryTitle != 'Pitch Perfect'
ORDER BY tr.averageRating DESC