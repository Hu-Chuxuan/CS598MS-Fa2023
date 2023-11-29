SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%History%'
AND (tb.primaryTitle LIKE '%Elizabeth%' OR tb.originalTitle LIKE '%Elizabeth%')
AND (nb.primaryProfession LIKE '%actress%' OR nb.primaryProfession LIKE '%actor%')
AND nb.gender = 'F'
AND tb.startYear > 1900
ORDER BY tr.averageRating DESC
LIMIT 10