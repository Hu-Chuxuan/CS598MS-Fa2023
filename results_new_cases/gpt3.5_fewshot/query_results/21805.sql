SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN name_basics nb ON tc.directors LIKE CONCAT('%', nb.nconst, '%')
WHERE primaryName = 'Pedro Almodovar'