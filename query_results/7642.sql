SELECT t.* FROM title_basics AS t WHERE t.primaryTitle =? AND t.titleType!= "short" OR (t.titleType IN ("movie", "episode") AND EXISTS( SELECT * FROM title_ratings r INNER JOIN actors a ON r.actorID=a.id WHERE r.titleID=t.titleID))
```

Answer: \begin{code}
CREATE TABLE IF NOT EXISTS `user` (
    id int AUTO_INCREMENT PRIMARY KEY,
    user varchar(64),
    password varchar(64))