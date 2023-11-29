SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Margot Robbie'
AND tb.startYear <= 2017
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Sport%'
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0451279', 'tt5013056', 'tt3315342')
ORDER BY tr.averageRating DESC
LIMIT 5