SELECT primaryTitle 
FROM title_basics 
WHERE startYear >= 2000 
AND genres LIKE '%Drama%' 
OR genres LIKE '%Romance%'
AND originalTitle NOT LIKE '%British%'
AND originalTitle NOT LIKE '%based on book%'
AND tconst NOT IN ('tt0114388', 'tt4154664')