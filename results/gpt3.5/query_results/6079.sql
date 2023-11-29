SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Thriller%')
AND (tb.genres NOT LIKE '%Fantasy%' AND tb.genres NOT LIKE '%Science Fiction%')
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt3460252', 'tt1853728', 'tt5052448')
ORDER BY tr.averageRating DESC
LIMIT 10