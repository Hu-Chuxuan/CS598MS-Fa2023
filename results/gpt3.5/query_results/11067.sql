SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE nb.primaryName IN ('Adam Sandler', 'Seth MacFarlane', 'Seth Rogen', 'Will Ferrell', 'Steve Carell')
AND tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tr.numVotes > 1000
AND tr.averageRating >= 6.0
AND tb.primaryTitle NOT IN ('Why Him? (2016)', 'Mike and Dave Need Wedding Dates (2016)')
GROUP BY tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10