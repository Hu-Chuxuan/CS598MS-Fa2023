SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear >= 1960
AND tb.startYear <= 1993
AND tb.primaryTitle NOT IN ('The Shining', "Rosemary's Baby", 'The Dark Half')
ORDER BY tr.numVotes DESC, tr.averageRating DESC
LIMIT 10