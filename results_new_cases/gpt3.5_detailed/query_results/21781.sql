SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating 
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN title_principals tp ON tb.tconst = tp.tconst
INNER JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Bill Murray'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt1234567', 'tt2345678', 'tt3456789', 'tt4567891', 'tt5678912', 'tt6789123')
AND tb.primaryTitle NOT IN ('Hangover', 'Game Night', 'Date Night', 'Girls Trip', 'Step Brothers', 'Bridesmaids')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10