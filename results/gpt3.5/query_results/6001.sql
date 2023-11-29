SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Drama%') 
AND (tb.primaryTitle LIKE '%Notting Hill%' OR tb.primaryTitle LIKE '%The Notebook%')
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10