SELECT * FROM
    (SELECT * FROM title_basic WHERE titleType ='movie') AS mb
    INNER JOIN (SELECT * FROM title_rating WHERE title_id = mb.title_id AND averageRating > 6 ) AS tr ON mb.tconst = tr.tconst
WHERE mb.startyear < 1990 OR mb.endyear >= 2018
AND ((mb.isAdult=TRUE AND mb.startyear>=1990))
OR ((mb.genre LIKE '%Drama%' AND mb.startyear>1990))
GROUP BY mb.tconst ORDER BY AVG(tr.averageRatig) DESC LIMIT 5