SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2015
AND tb.startYear <= 2018
AND tb.tconst NOT IN ('tt3501632', 'tt0478970', 'tt1825683', 'tt0974015', 'tt2250912', 'tt5463162')
ORDER BY tr.averageRating DESC
LIMIT 5