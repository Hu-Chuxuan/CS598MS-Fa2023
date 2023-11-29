SELECT * FROM (
    SELECT t.*, r.averageRating AS avgRat, r.numVotes AS numVots, count(*) OVER() AS cnt
FROM title_basic t
LEFT JOIN title_rating r ON r.primaryTitle = t.tconst AND r.startYear <= DATEADD(year,-3,'2020-01-01') AND r.startYear >= '2000'
WHERE t.isAdult IN ('0','1') AND t.genre NOT LIKE '%documentary%' AND t.runtimeMinutes > 100 AND t.startYear < '2000' GROUP BY t.tconst ORDER BY avgRat DESC LIMIT 10) t
JOIN (SELECT distinct nconst from title_basics where isAdult='0' and genre not like '%documentary%') actors ON actors.nconst=t.nconst
join (SELECT distinct tconst from title_principalsp) p on p.tconst = t.tconst
left join (SELECT cast('max(avgRat)' as decimal),cast('count(*)' as int) from title_ratings group by tconst order by avgRat desc limit 1 ) m on m.cnt>0 AND m.tconst=t.tconst
where p.category <> '' OR p.job <>'' OR p.character IS NULL
group by t.tconst having max(avgRat)>1.00
order by avgRat desc limit 10 offset 0 