SELECT DISTINCT
    movies.*,
    CONCAT(CONVERT (char(6), cast(cast(movies.startDate as date) - cast(cast(userPreferences.[enddate] as date) as bigint)),'mm/dd/yyyy'),'', CONVERT(char(7), CAST((CAST(movies.runtime AS NUMERIC)) / 60))) AS runningTimeInMins,
FROM movies LEFT JOIN userPreferances ON movies.titleID = userPreferences.titleID