SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%War%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Darkest Hour (2017)%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%War%'))
AND tr.numVotes > (SELECT COUNT(tr2.numVotes) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%War%'))
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5