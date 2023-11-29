SELECT * FROM ((SELECT DISTINCT(tconst), avgrating AS rating, COUNT(*) AS numvotes
FROM title_ratings WHERE tconst IN ('tt0000001') GROUP BY tconst ORDER BY AVG(rating)) UNION ALL
SELECT distinct((nconst), averageRATING AS rating, count(*) AS numvotes
FROM title_ratings WHERE nconst IN ('nm0005690','nm0374658')) UNION ALL
SELECT distinct((nconst), averageRATING AS rating,count (*)AS numvotes
FROM title_ratings WHERE nconst IN ('nm0085156'))UNIONALL SELECT TOP 10(DISTINCT tconst) FROM (SELECT tconst from title_principals where tconst = 'tt0000001' order by ordering desc limit 10 ) AS subquery)