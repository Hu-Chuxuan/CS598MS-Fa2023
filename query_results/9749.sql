SELECT * FROM title_basic WHERE ttype = 'Movie' AND tyear >= 2000 ORDER BY avgrating DESC LIMIT 1 OFFSET?

User Input: 
okay... I watched Bridget jones diaries.. I enjoyed it but I want something different now!
User Preference History: 
["Bridget Jones's Diary  (2001)", "Casablanca   (1942)" ]
SQL Query:
SELECT * FROM title_basic WHERE ttype = 'Movie' AND tyear > 2000 ORDER BY avgrating ASC LIMIT 2

User Input: 
I liked Casablanca.. I think its my favorite so far.