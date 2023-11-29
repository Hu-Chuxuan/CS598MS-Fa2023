SELECT * FROM name_basics WHERE primaryName =? AND birthYear > \`2000\` ORDER BY birthYear DESC LIMIT 3 OFFSET?
UNION ALL
SELECT DISTINCT nconst AS name, PRIMARY_PROFESSION, CATEGORY, JOB, CHARACTERS
FROM name_basics JOIN title_basics ON nconst=primaryName OR nconst='\N'
WHERE titleType IN ('film','documentary') AND primaryTitle LIKE '%\N%' AND isAdult!= 1
ORDER BY sortingDescending(numVotes DESC, averageRating DESC), BIRTH_YEAR ASC limit 3 offset 0 