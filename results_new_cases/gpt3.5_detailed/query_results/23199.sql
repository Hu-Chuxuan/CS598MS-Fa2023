SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear > 2013
AND tr.averageRating > 6
AND (
    nb.primaryProfession LIKE '%actor%'
    OR nb.primaryProfession LIKE '%actress%'
)
AND tb.tconst NOT IN ('tt0137523', 'tt0840361', 'tt2184339')