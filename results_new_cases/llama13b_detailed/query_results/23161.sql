SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.startYear = 1995 AND tb.genres LIKE '%Crime%'
AND nb.primaryName NOT IN (SELECT nconst FROM name_basics WHERE knownForTitles LIKE '%The Purge (2013)%')
AND nb.primaryName NOT IN (SELECT nconst FROM name_basics WHERE knownForTitles LIKE '%Panic Room (2002)%')
ORDER BY tr.averageRating DESC, tb.runtimeMinutes DESC