SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt1234567') -- Exclude the movie 'The Notebook'
ORDER BY tr.averageRating DESC
LIMIT 10