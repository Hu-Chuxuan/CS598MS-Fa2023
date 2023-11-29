SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND (tb.primaryTitle LIKE '%Avengers%' OR tb.primaryTitle LIKE '%Guardians of the Galaxy%')
AND tr.numVotes > 1000
AND nb.primaryProfession LIKE '%actor%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt2527336', 'tt3896198')  -- excluding Star Wars: Episode VIII – The Last Jedi and Guardians of the Galaxy Vol. 2
GROUP BY tb.tconst
ORDER BY tr.averageRating DESC
LIMIT 10