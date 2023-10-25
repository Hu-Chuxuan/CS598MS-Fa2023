SELECT DISTINCT titleID FROM tconst WHERE titleType = "kid-friendly" AND
(titleType IN ('movie') OR titleType IN ('tv')) ORDER BY numVotes DESC LIMIT 1