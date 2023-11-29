SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%Pets%%'))
AND EXISTS (SELECT 1 FROM name_basics nb2 WHERE nb2.primaryName LIKE '%Frozen%%' AND nb2.knownForTitles LIKE '%Frozen%%')
AND EXISTS (SELECT 1 FROM name_basics nb3 WHERE nb3.primaryName LIKE '%Never Let Me Go%%' AND nb3.knownForTitles LIKE '%Never Let Me Go%%')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC