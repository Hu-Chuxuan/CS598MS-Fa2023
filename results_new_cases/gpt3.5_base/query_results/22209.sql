SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%horrors%'
AND tb.genres LIKE '%thrillers%'
AND tb.genres LIKE '%mysteries%'
AND tb.primaryTitle NOT IN ('Inception (2010)', 'Doctor Strange (2016)', 'The Avengers (2012)')
ORDER BY tr.averageRating DESC
LIMIT 10