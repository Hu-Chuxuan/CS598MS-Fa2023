SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Along Came Polly', 'Pretty Woman (1990)', "Bridget Jones\'s Diary  (2001)")
ORDER BY tr.averageRating DESC
LIMIT 10