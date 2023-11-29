SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
WHERE (tc.directors LIKE '%nm0426059%' 
       OR tc.writers LIKE '%nm0426059%')
      AND tb.titleType = 'movie'
      AND tb.genres LIKE '%murder%'
      AND tb.startYear > 2010
      AND tr.numVotes > 1000
      AND tb.primaryTitle != 'Looper'
ORDER BY tr.averageRating DESC
LIMIT 5