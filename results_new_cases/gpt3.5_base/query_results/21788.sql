SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tb.startYear >= 2010
AND tb.primaryTitle != 'Les Misérables'
AND tb.primaryTitle NOT IN ('The Notebook')
ORDER BY tr.averageRating DESC
LIMIT 5