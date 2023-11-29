SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%'
AND startYear >= 2010
AND averageRating > 6
AND primaryTitle NOT IN ('The Notebook (2004)', 'Fifty Shades of Grey (2015)', 'Fifty Shades Freed (2018)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5