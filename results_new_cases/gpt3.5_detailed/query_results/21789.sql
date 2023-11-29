SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Rachel McAdams'
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Bridget Jones: The Edge of Reason', "Bridget Jones's Diary", "Bridget Jones's Baby")
ORDER BY tr.averageRating DESC
LIMIT 5