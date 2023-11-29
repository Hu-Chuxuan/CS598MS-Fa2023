SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Fantasy%'
AND tb.primaryTitle NOT IN ('Beauty and the Beast (2017)', 'The NeverEnding Story (1984)', 'The Lord of the Rings: The Two Towers (2002)', 'Step Brothers (2008)', 'Fast 8', 'Harry Potter')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5