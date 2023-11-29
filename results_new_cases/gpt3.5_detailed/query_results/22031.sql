SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.startYear <= 2020
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%')
AND tb.tconst NOT IN ('tt0109686', 'tt0118715', 'tt0093773', 'tt0780504', 'tt0119396', 'tt0116392', 'tt1766334', 'tt5104604')
AND tb.tconst NOT IN ('tt0114369', 'tt0105236', 'tt0325980', 'tt0457510')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5