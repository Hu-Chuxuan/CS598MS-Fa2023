SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND (tb.primaryTitle = 'Ace Ventura: Pet Detective' OR tb.primaryTitle = 'Superbad' OR tb.primaryTitle = 'Grown Ups')
AND tb.startYear < 2022
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10