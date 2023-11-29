SELECT * FROM (
	SELECT DISTINCT t.primaryTitle AS TitleID, r.averageRating, c.category, d.job, d.characters, nc.ordering, nc.nconst
FROM title_basic t
INNER JOIN title_rating r ON t.tconst = r.tconst AND r.numvotes > 5
LEFT OUTER JOIN title_crew c ON c.tconst = t.tconst
LEFT OUTER JOIN title_principal d ON d.tconst = t.tconst
RIGHT OUTER JOIN name_basic nb ON nb.nconst = c.primaryName OR nb.nconst = d.nconst
LEFT OUTER JOIN name_basics nc ON nc.nconst IN ('d.nconst','nb.nconst')
WHERE c.isAdult=1
AND t.startyear >= 1950
AND t.endyear <= 2020
GROUP BY t.primaryTitle,r.averageRating,nc.ordering,nconst,c.category,d.job,d.characters)