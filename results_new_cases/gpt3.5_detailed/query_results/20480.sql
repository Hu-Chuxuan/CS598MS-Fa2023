SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' 
   OR tb.genres LIKE '%Thriller%'
   OR tb.genres LIKE '%Sci-Fi%'
   OR tb.genres LIKE '%Fantasy%'
   OR tb.genres LIKE '%Drama%'
   OR tb.genres LIKE '%Romance%'
   AND tb.startYear >= 1990
   AND tb.tconst NOT IN ('tt0330243', 'tt0181689', 'tt0145487', 'tt0935307')