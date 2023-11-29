SELECT tb.tconst, tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2017
AND tb.primaryTitle != 'Logan'
AND (tb.primaryTitle = 'Iron Man' OR tb.primaryTitle = 'Wonder Woman' OR tb.primaryTitle = 'The Dark Knight')
ORDER BY tr.averageRating DESC
LIMIT 5