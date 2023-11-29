SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
WHERE (FIND_IN_SET('James Cameron', tc.directors) > 0 OR FIND_IN_SET('James Cameron', tc.writers) > 0)
AND tb.startYear < 2012
AND tb.startYear > 2010