SELECT tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tc.directors LIKE '%nm0000229%' 
AND tb.startYear <= 2022
AND tb.primaryTitle NOT IN ('Jeepers Creepers  (2001)', 'Scream  (1996)', 'Saw  (2004)', 'I Know What You Did Last Summer (1997)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10