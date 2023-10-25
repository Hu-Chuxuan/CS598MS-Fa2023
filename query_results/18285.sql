SELECT * FROM (title_basics tb LEFT JOIN name_basics nb ON tb.primaryTitle = nb.primaryName) WHERE nb.birthYear < '1960' AND (nb.deathYear IS NULL OR nb.deathYear > '1980') GROUP BY tb.id HAVING COUNT(*) >= 1