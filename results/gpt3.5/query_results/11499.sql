SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tb.primaryTitle NOT IN ('Moana', 'The Conjuring', 'Paranormal Activity', 'The Woman in Black', 'Tangled', 'Get Out', 'The Croods', 'It', 'Mama', 'Insidious')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5