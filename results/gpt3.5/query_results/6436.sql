SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Comedy%')
AND tb.startYear > 1990
AND tb.startYear < 2022
AND tb.primaryTitle NOT IN ('Love Actually', 'Pretty Woman', "Bridget Jones's Diary")
ORDER BY tr.averageRating DESC
LIMIT 1