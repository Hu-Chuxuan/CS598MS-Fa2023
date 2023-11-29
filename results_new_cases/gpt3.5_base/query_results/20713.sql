SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%action%' OR tb.genres LIKE '%comedy%' OR tb.genres LIKE '%click flicks'
AND (tb.genres NOT LIKE '%horror%' AND tb.genres NOT LIKE '%thriller%')
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Deadpool (2016)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10