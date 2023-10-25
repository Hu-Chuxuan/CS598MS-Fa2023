SELECT * FROM imdb.title WHERE rating > 6 AND (director IN ('George Miller') OR writer IN('Guy Norris'))
ORDER BY rating DESC LIMIT 10