SELECT primaryTitle 
FROM title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE primaryTitle != 'The Last House on the Left' 
AND titleType = 'movie' 
AND genres LIKE '%Horror%'
AND (directors LIKE '%nm0000342%' OR directors LIKE '%nm0000175%')
AND (writers LIKE '%nm0000175%' OR writers LIKE '%nm0000342%')
AND (primaryName = 'Wes Craven' OR primaryName = 'Stephen King' OR primaryName = 'Ken Foree')
AND primaryTitle NOT IN ('Hostel', 'The Dentist')
GROUP BY primaryTitle
ORDER BY numVotes DESC
LIMIT 5