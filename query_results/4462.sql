SELECT * FROM (
    SELECT DISTINCT t.*, r.* from title_basic as t JOIN rating AS r ON t.titleID =r.movieId WHERE userInput LIKE '%Incredible%' AND userInput LIKE '%Lego%')
JOIN (SELECT DISTINCT t.*, c.* from crew_member as c JOIN cast as c1 ON c.castMemberId=c1.id ) C ON T.titleID=C.titleID