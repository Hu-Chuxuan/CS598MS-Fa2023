SELECT
    TOP 10 * FROM
        title_principals WHERE titleID = 'tt0000001' AND category LIKE '%Actor%' ORDER BY avg_rating DESC LIMIT 10
UNION ALL
SELECT
    TOP 10 * FROM
        title_principals WHERE titleID IN ('tt0000002','tt0000003') AND category LIKE '%Director%' ORDER BY avg_rating DESC LIMIT 10
UNION ALL
SELECT
    TOP 10 * FROM
        title_principals WHERE titleID NOT IN ('tt0000001','tt0000002','tt0000003') AND category LIKE '%Writer%' OR category LIKE '%Editor%' OR category LIKE '%Cinematograper%' UNION ALL
SELECT
    TOP 10 * FROM
        title_principals WHERE titleID IN ('tt0000002','tt0000003') AND category LIKE '%Self%'' ORDER BY avg_rating DESC LIMIT 10
ORDER BY rating DESC