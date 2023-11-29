SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType!= 'horror' AND n.primaryProfession IN ('actor', 'writer')
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.nconst = n.nconst AND tr2.tconst IN (SELECT t.tconst FROM title_basics t WHERE t.titleType ='movie'))
ORDER BY tr.averageRating DESC, n.primaryName ASC