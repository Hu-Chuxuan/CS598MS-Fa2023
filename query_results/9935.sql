SELECT t.* FROM title AS t JOIN title_recommendation AS tr ON t.titleID = tr.titleID WHERE tr.userID =? AND (tr.genre LIKE 'Action%' OR tr.category LIKE '%Action%') ORDER BY tr.rating DESC LIMIT 5