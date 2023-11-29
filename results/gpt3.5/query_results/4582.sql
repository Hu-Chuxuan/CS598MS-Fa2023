SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tr.averageRating
FROM title_basics AS tb1
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE nb.primaryName = 'Jeff Goldblum' 
AND tb1.titleType = 'movie'
AND tb1.startYear <= 2022
AND tb1.primaryTitle NOT IN ('The Fly  (1986)', 'Independence Day  (1996)', 'Thor: Ragnarok (2017)', 'Jurassic Park  (1993)')
ORDER BY tr.averageRating DESC
LIMIT 5