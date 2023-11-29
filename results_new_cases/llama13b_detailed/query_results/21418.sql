SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.primaryTitle LIKE '%Star Wars%'
AND nb.primaryName NOT IN (SELECT nconst FROM name_basics WHERE knownForTitles LIKE '%Psycho%')
ORDER BY tr.averageRating DESC, tb.startYear DESC