SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tc.directors LIKE '%nm0000116%') -- James Cameron's nconst
AND tb.primaryTitle != 'Titanic' -- excluding Titanic
AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC
LIMIT 5