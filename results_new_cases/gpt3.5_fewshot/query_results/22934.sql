SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN name_basics nb ON nb.nconst = ANY(tc.writers)
WHERE nb.primaryName = 'Stephen King'