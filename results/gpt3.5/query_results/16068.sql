SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Post-Apocalyptic%'
AND tb.startYear > 2010
AND tb.primaryTitle NOT IN ('The Book of Eli (2010)', 'The Postman (1997)', 'The Girl with All the Gifts (2016)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10