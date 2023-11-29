SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating, tr.numVotes
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.primaryTitle LIKE '%The Room%'
AND tb1.startYear = 2003