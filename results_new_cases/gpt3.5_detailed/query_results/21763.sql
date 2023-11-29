SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%'
AND tb.startYear > 2000
AND tb.tconst NOT IN ('tt0167261', 'tt0114814', 'tt0988045', 'tt0114369')
ORDER BY tr.averageRating DESC
LIMIT 5