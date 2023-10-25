SELECT t.* FROM (
    SELECT * FROM title WHERE titleType = "drama" AND (startYear <= @start && startYear >= @end)