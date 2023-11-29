SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Romance%')
AND (tb.startYear BETWEEN 1980 AND 1990)
AND (nb.primaryName LIKE '%female%' OR nb.primaryName LIKE '%woman%' OR nb.primaryProfession LIKE '%actress%')
AND tb.primaryTitle NOT IN ('Beaches', 'Terms of Endearment', 'It Follows', 'Sinister')
GROUP BY tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5