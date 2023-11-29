SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1990
AND tb.genres LIKE '%Comedy%'
AND (tc.directors LIKE '%nm0000490%' OR tc.directors LIKE '%nm0374674%' OR tc.directors LIKE '%nm0005139%' OR tc.directors LIKE '%nm0531327%')
AND (tp.category = 'actor' AND (tp.nconst LIKE '%nm0369436%' OR tp.nconst LIKE '%nm0003126%' OR tp.nconst LIKE '%nm0425005%' OR tp.nconst LIKE '%nm0005180%'))
AND tb.tconst NOT IN ('tt0123','tt4567','tt8901') -- excluding previously watched titles
ORDER BY tr.averageRating DESC
LIMIT 5