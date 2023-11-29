SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2010
AND tb.genres LIKE '%Crime%'
AND tb.genres LIKE '%Drama%'
AND (nb.primaryName = 'Chris Pine' OR nb.primaryName = 'Ben Foster' OR nb.primaryName = 'Jeff Bridges')
AND tb.tconst NOT IN ('tt4975722', 'tt2582782') -- Excluding the movies already watched
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5