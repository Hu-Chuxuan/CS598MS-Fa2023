SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Oprah Winfrey'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('The Hunger Games', 'Oldboy', 'Battle Royale')
ORDER BY tr.averageRating DESC
LIMIT 10