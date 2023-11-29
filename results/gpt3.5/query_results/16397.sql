SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Die Antwoord'
AND tb.titleType = 'movie'
AND tb.primaryTitle <> 'District 9 (2009)'
AND tb.primaryTitle <> 'Men in Black (1997)'
ORDER BY tr.averageRating DESC, tb.startYear ASC