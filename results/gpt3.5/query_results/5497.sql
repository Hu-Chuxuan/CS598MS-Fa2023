SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%')
AND tb.startYear = 2018
AND ((nb.primaryName LIKE '%Gal Gadot%') OR (nb.primaryName LIKE '%Chadwick Boseman%'))
AND tb.primaryTitle != 'Wonder Woman'
AND tb.primaryTitle != 'Guardians of the Galaxy'
AND tb.primaryTitle != 'Ant-Man'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5