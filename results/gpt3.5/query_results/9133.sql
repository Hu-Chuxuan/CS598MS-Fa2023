SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%Sci-Fi%' AND tb.genres LIKE '%Thriller%' AND tb.genres LIKE '%Martial Arts%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0133093', 'tt0770828', 'tt0480249', 'tt0234215', 'tt0116629')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10