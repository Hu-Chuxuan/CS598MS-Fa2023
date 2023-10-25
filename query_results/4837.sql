SELECT title.* FROM
(title_basics tb LEFT JOIN title_ratings tr ON tb.primaryTitle = tr.primaryTitle AND tb.startYear <= tr.endYear AND tr.numVotes > 10 )
LEFT JOIN title_crew tc ON tb.directors LIKE CONCAT('%',tc.name,'%') OR tb.writers LIKE CONCAT('%',tc.name,'%') WHERE tb.isAdult <> 'true' AND tb.genre IN ('Horror','Sci-Fi/Fantasy') ORDER BY tb.runtimeMinutes DESC LIMIT 6