SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear > 2004
AND tb.primaryTitle NOT IN ('Harry Potter and the Goblet of Fire', 'Les Misérables', 'Lemony Snicket's A Series of Unfortunate Events')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5