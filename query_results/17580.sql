SELECT tc.* FROM titles AS t INNER JOIN title_recommendation AS tr ON t.titleID = tr.titleID WHERE userInput LIKE '%adventure%'