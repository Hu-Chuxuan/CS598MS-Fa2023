SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.tconst != 'tt3659388'  -- Exclude 'The Martian'
AND (tb.primaryTitle LIKE '%The Notebook%' 
    OR tb.primaryTitle LIKE '%The Big Sick%' 
    OR tb.primaryTitle LIKE '%The Fault in Our Stars%')
ORDER BY tr.averageRating DESC