SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Mystery'
AND nb.primaryProfession LIKE '%Actor'
AND nb.knownForTitles NOT LIKE '%[0-9]%'  -- exclude titles with no user ratings
GROUP BY tb.tconst
HAVING COUNT(tr.nconst) > (SELECT AVG(COUNT(tr.nconst)) FROM title_ratings) * 2  -- filter out titles with too few ratings
ORDER BY COUNT(tr.nconst) DESC