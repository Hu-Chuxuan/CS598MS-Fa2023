SELECT tc.* FROM title_basics AS tb INNER JOIN ( SELECT DISTINCT(tb.titleType) as TYPE, avg(tr.rating), COUNT(*) AS VOTES FROM title_ratings tr WHERE EXISTS (SELECT * FROM title_ratings trr WHERE trr.titleId = tr.titleId AND rr.primaryProfession LIKE '%Actor%' OR rr.primaryProfession LIKE '%%') GROUP BY titleType ORDER BY rating DESC LIMIT 10 ) t ON tC.titleType=TYPE