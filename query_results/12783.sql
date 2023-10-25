SELECT DISTINCT(title_name) FROM (
    SELECT tc.*, nb.*, r.rating AS rating, COUNT(*) OVER() AS numVoters
FROM title_name AS tc INNER JOIN (
        SELECT * FROM title_ratings WHERE (startyear >= '0000-00-00' AND startyear <= '9999-00-00') OR (endyear <='0000-00-00' AND endyear > '9999-00-00')) r ON tc.primaryTitle = r.primaryTitle UNION ALL
SELECT tc.*, nb.*, r.rating AS rating, COUNT(*) OVER() AS numVoters
FROM title_name AS tc INNER JOIN (
        SELECT * FROM title_ratings WHERE (startyear >= '0000-00-00' AND startyear <= '9999-00-00') OR (endyear <='0000-00-00' AND endyear > '9999-00-00')) r ON tc.originalTitle = r.primaryTitle UNION ALL
SELECT tc.*, nb.*, r.rating AS rating, COUNT(*) OVER() AS numVoters
FROM title_name AS tc INNER JOIN (
        SELECT * FROM title_ratings WHERE (startyear >= '0000-00-00' AND startyear <= '9999-00-00') OR (endyear <='0000-00-00' AND endyear > '9999-00-00')) r ON tc.isadult=r.numvotes IS NOT NULL AND tc.genre IN ('Comedy', 'Drama','Romance') GROUP BY tc.titleType ORDER BY rating DESC LIMIT 7