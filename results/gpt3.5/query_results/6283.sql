SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%') 
AND tb.startYear >= 2010 
AND tb.tconst NOT IN ('tt1843866', 'tt0451279', 'tt2911666') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC