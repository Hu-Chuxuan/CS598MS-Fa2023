SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%' OR tb.genres LIKE '%Drama%')
AND tb.primaryTitle NOT IN ('Mean Girls (2004)', '21 Jump Street  (2012)', 'Ghostbusters  (2016)', 'Legally Blonde (2001)', 'Identity Thief (2013)', 'Miss Congeniality  (2000)', 'Taken  (2008)')
ORDER BY tr.averageRating DESC
LIMIT 10