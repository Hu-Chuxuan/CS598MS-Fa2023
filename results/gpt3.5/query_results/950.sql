SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres NOT LIKE '%Sci-Fi%'
AND tb.primaryTitle NOT LIKE '%Star Wars%'
AND (tb.primaryTitle LIKE '%Wedding Crashers%' 
    OR tb.primaryTitle LIKE '%Superbad%' 
    OR tb.primaryTitle LIKE '%It%' 
    OR tb.primaryTitle LIKE '%The Wolf of Wall Street%' 
    OR tb.primaryTitle LIKE '%Pineapple Express%' 
    OR tb.primaryTitle LIKE '%This Is the End%')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 1