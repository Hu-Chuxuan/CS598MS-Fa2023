SELECT primaryTitle
FROM title_basics
WHERE genres LIKE '%Crime%'
AND tconst NOT IN ('tt0044706', 'tt0265086', 'tt1334260', 'tt0074899', 'tt0076584', 'tt0362227', 'tt0212720')
ORDER BY numVotes DESC
LIMIT 5